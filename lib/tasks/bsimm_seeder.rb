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
        .css("div.background-component div.component-text:has(p>b)").each do |practice_html|
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

  def seeds(data)
    seeds = ""
    seeds += substitute(VERTICAL_TEMPLATE, name: "Earth", numfirms: 109, version: 8)
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

    # Verticals and activity data per vertical cannot be downloaded from the web, it is in the pdf only
    # So this is static data here to be added to the seeds
    # TODO: this needs data for the rest of the activities (ie. only SM is done here currently)
    seeds += substitute(VERTICAL_TEMPLATE, name: "Financial", numfirms: 47, version: 8)
    seeds += substitute(VERTICAL_TEMPLATE, name: "ISV", numfirms: 38, version: 8)
    seeds += substitute(VERTICAL_TEMPLATE, name: "Cloud", numfirms: 16, version: 8)
    seeds += substitute(VERTICAL_TEMPLATE, name: "Healthcare", numfirms: 17, version: 8)
    seeds += substitute(VERTICAL_TEMPLATE, name: "IoT", numfirms: 12, version: 8)
    seeds += substitute(VERTICAL_TEMPLATE, name: "Insurance", numfirms: 11, version: 8)

    seeds += <<~STATICDATA
      ActivityVertical.create(activity: a_SM11, vertical: v_Financial, count: 30, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_Financial, count: 22, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_Financial, count: 25, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_Financial, count: 44, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_Financial, count: 24, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_Financial, count: 23, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_Financial, count: 15, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_Financial, count: 14, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_Financial, count: 21, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_Financial, count: 8, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_Financial, count: 1, version: 8)

      ActivityVertical.create(activity: a_SM11, vertical: v_ISV, count: 21, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_ISV, count: 25, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_ISV, count: 20, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_ISV, count: 32, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_ISV, count: 18, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_ISV, count: 11, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_ISV, count: 18, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_ISV, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_ISV, count: 11, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_ISV, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_ISV, count: 6, version: 8)

      ActivityVertical.create(activity: a_SM11, vertical: v_Cloud, count: 8, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_Cloud, count: 10, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_Cloud, count: 9, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_Cloud, count: 14, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_Cloud, count: 10, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_Cloud, count: 7, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_Cloud, count: 8, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_Cloud, count: 3, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_Cloud, count: 7, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_Cloud, count: 3, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_Cloud, count: 5, version: 8)

      ActivityVertical.create(activity: a_SM11, vertical: v_Healthcare, count: 7, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_Healthcare, count: 7, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_Healthcare, count: 7, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_Healthcare, count: 13, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_Healthcare, count: 4, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_Healthcare, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_Healthcare, count: 8, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_Healthcare, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_Healthcare, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_Healthcare, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_Healthcare, count: 1, version: 8)

      ActivityVertical.create(activity: a_SM11, vertical: v_IoT, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_IoT, count: 9, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_IoT, count: 6, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_IoT, count: 8, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_IoT, count: 4, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_IoT, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_IoT, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_IoT, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_IoT, count: 2, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_IoT, count: 1, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_IoT, count: 2, version: 8)

      ActivityVertical.create(activity: a_SM11, vertical: v_Insurance, count: 3, version: 8)
      ActivityVertical.create(activity: a_SM12, vertical: v_Insurance, count: 3, version: 8)
      ActivityVertical.create(activity: a_SM13, vertical: v_Insurance, count: 5, version: 8)
      ActivityVertical.create(activity: a_SM14, vertical: v_Insurance, count: 9, version: 8)
      ActivityVertical.create(activity: a_SM21, vertical: v_Insurance, count: 4, version: 8)
      ActivityVertical.create(activity: a_SM22, vertical: v_Insurance, count: 3, version: 8)
      ActivityVertical.create(activity: a_SM23, vertical: v_Insurance, count: 4, version: 8)
      ActivityVertical.create(activity: a_SM25, vertical: v_Insurance, count: 1, version: 8)
      ActivityVertical.create(activity: a_SM26, vertical: v_Insurance, count: 1, version: 8)
      ActivityVertical.create(activity: a_SM31, vertical: v_Insurance, count: 1, version: 8)
      ActivityVertical.create(activity: a_SM32, vertical: v_Insurance, count: 1, version: 8)
    STATICDATA
    # TODO: Note that as of now, only Governance/SM is included per vertical!

    seeds
  end
end
