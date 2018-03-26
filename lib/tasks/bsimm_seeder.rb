# rubocop:disable Metrics/ModuleLength
module BsimmSeeder
  require 'nokogiri'
  require 'open-uri'

  BSIMM_URL = "https://bsimm.com".freeze

  DOMAIN_TEMPLATE = <<~TEMPLATE.freeze
    d_%%domain_varname%% = Domain.create(
      title: "%%title%%",
      descr: "%%descr%%",
      version: %%version%%
    )
  TEMPLATE

  PRACTICE_TEMPLATE = <<~TEMPLATE.freeze
    p_%%practice_varname%% = Practice.create(
      domain: d_%%domain_varname%%,
      title: "%%title%%",
      short: "%%short%%",
      descr: "%%descr%%",
      version: %%version%%
    )
  TEMPLATE

  ACTIVITY_TEMPLATE = <<~TEMPLATE.freeze
    a_%%activity_varname%% = Activity.create(
      practice: p_%%practice_varname%%,
      bsid: "%%bsid%%",
      title: "%%title%%",
      descr: "%%descr%%",
      level: %%level%%,
      version: %%version%%
    )
  TEMPLATE

  VERTICAL_TEMPLATE = <<~TEMPLATE.freeze
    v_%%name%% = Vertical.create(
      name: "%%name%%",
      numfirms: %%numfirms%%,
      version: %%version%%
    )
  TEMPLATE

  ACTIVITY_VERTICAL_TEMPLATE = <<~TEMPLATE.freeze
    ActivityVertical.create(activity: a_%%activity_varname%%, vertical: v_%%vertical_name%%, count: %%count%%, version: %%version%%)
  TEMPLATE

  def domains
    retval = []
    page = Nokogiri::HTML(open(BSIMM_URL + "/framework.html"))
    page.css("section.component-card-b div.card-text").each do |framework_html|
      domain = {
        title: framework_html.css("h4").text.strip,
        descr: framework_html.css("p").text.strip,
        url: framework_html.css("a").attr("href").text.strip,
        version: 8
      }
      retval << domain
    end
    retval
  end

  def practices(domain_url)
    retval = []
    page = Nokogiri::HTML(open(BSIMM_URL + domain_url))
    page.css("section.component-card-b div.card-text").each do |domain_html|
      practice = {
        title: domain_html.css("h4").text.strip,
        short: nil,
        descr: domain_html.css("p").text.strip,
        url: domain_html.css("a").attr("href").text.strip,
        version: 8
      }
      retval << practice
    end
    retval
  end

  def activities(practice_url)
    retval = []
    page = Nokogiri::HTML(open(BSIMM_URL + practice_url))
    page.css("section.component-column div")[0]
        .css("section.component-textcomp div.component-text:has(p>b)").each do |practice_html|
      title_raw = practice_html.css("p>b").text.strip
      parts = title_raw.match(/\[(([A-Z]+) *((\d)\.\d+))\:.*?([0-9]+)\] (.*)/)
      activity = {
        bsid: parts[1], # the original activity id from bsimm, eg. SM1.1
        title: parts[6], # activity title
        descr: practice_html.css("p")[1].text.strip, # activity description
        level: parts[4], # activity level (1-3)
        practice_short: parts[2], # short name for pratice, eg. SM
        num_in_practice: parts[3], # id in the given practice, eg. 1.1
        count: {
          Earth: parts[5] # number of firms performing the activity globally ("Earth" vertical)
        },
        version: 8
      }
      retval << activity
    end
    retval
  end

  def substitute(template, params)
    tplt = template.dup
    params.each do |name, value|
      tplt.gsub!('%%' + name.to_s + '%%', value.to_s) if value.is_a?(String) || value.is_a?(Integer)
    end
    tplt
  end

  # datafile format:
  #   header row example: "Activity Financial (of 47) ISV (of 38) Cloud (of 16) Healthcare (of 17) IoT (of 12) Insurance (of 11)"
  #   bob a mester regidata rows example: "[SM1.1] 30 21 8 7 5 3"
  def parse_activities_by_vertical(datafile)
    seeds = ""
    lines = File.readlines(datafile)
    headerline = lines.shift

    # parse verticals
    verticals = headerline.scan(/(\w+)\s+\(of (\d+)\)/)
    verticals.each do |vert_data|
      seeds += substitute(VERTICAL_TEMPLATE, name: vert_data[0], numfirms: vert_data[1], version: 8)
    end

    # parse activity counts by vertical
    vertical_names = verticals.map { |v| v[0] }
    lines.each do |line|
      line_data = line.split
      bsid = line_data.shift
      activity_varname = bsid.gsub(/[^\w]/, "")
      line_data.each_with_index do |count, vert_index|
        av_data = {
          activity_varname: activity_varname,
          vertical_name: vertical_names[vert_index],
          count: count,
          version: 8
        }
        seeds += substitute(ACTIVITY_VERTICAL_TEMPLATE, av_data)
      end
    end
    seeds
  end

  def seeds(data)
    seeds = substitute(VERTICAL_TEMPLATE, name: "Earth", numfirms: 109, version: 8)
    data[:domains].each do |domain_data|
      domain_varname = domain_data[:title].gsub(/[^\w]/, "")
      seeds += substitute(DOMAIN_TEMPLATE, domain_data.merge(domain_varname: domain_varname))
      domain_data[:practices].each do |practice_data|
        practice_varname = practice_data[:short]
        parent_data = { domain_varname: domain_varname, practice_varname: practice_varname }
        seeds += substitute(PRACTICE_TEMPLATE, practice_data.merge(parent_data))
        practice_data[:activities].each do |activity_data|
          activity_varname = activity_data[:bsid].gsub(/[^\w]/, "")
          parent_data = { practice_varname: practice_varname, activity_varname: activity_varname }
          seeds += substitute(ACTIVITY_TEMPLATE, activity_data.merge(parent_data))

          activity_data[:count].each do |vertical_name, count|
            av_data = {
              activity_varname: activity_varname,
              vertical_name: vertical_name.to_s,
              count: count,
              version: activity_data[:version]
            }
            seeds += substitute(ACTIVITY_VERTICAL_TEMPLATE, av_data)
          end
        end
      end
    end

    seeds += parse_activities_by_vertical(Rails.root.to_s + "/db/seeds_verticaldata_from_pdf.txt")
  end
end
# rubocop:enable Metrics/ModuleLength
