namespace :bsimm do
  desc "Extracts data from bsimm.com"
  task generate_seeds_from_web: :environment do
    require 'nokogiri'
    require 'open-uri'
    require_relative './bsimm_seeder'

    bsimm_url = "https://bsimm.com"
    page = Nokogiri::HTML(open(bsimm_url + "/framework.html"))
    data = { domains: [] }

    # Domains
    page.css("section.component-card-b div.card-text").each do |framework_html|
      domain = {
        title: framework_html.css("h4").text.strip,
        descr: framework_html.css("p").text.strip,
        url: framework_html.css("a").attr("href").text.strip,
        version: 8,
        practices: []
      }
      data[:domains] << domain
    end

    # Practices
    data[:domains].each do |domain|
      page = Nokogiri::HTML(open(bsimm_url + domain[:url]))
      page.css("section.component-card-b div.card-text").each do |domain_html|
        practice = {
          title: domain_html.css("h4").text.strip,
          short: nil,
          descr: domain_html.css("p").text.strip,
          url: domain_html.css("a").attr("href").text.strip,
          version: 8,
          activities: []
        }
        domain[:practices] << practice
      end
    end

    # Activities
    data[:domains].each do |domain|
      domain[:practices].each do |practice|
        page = Nokogiri::HTML(open(bsimm_url + practice[:url]))
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
          practice[:activities] << activity

          # this is kind of a hack, but on the domain url with the list of practices,
          # the short name for the practice is not displayed, so it's written back from here
          practice[:short] = activity[:practice_short] if practice[:short].nil?
        end
      end
    end

    # Output in seeds.rb format (seed generator)

    def substitute(template, params)
      tplt = template.dup
      params.each do |name, value|
        tplt.gsub!('%%' + name.to_s + '%%', value.to_s) if value.is_a?(String) || value.is_a?(Integer)
      end
      tplt
    end

    domain_template = <<~TEMPLATE
      d_%%title%% = Domain.create(
        title: "%%title%%",
        descr: "%%descr%%",
        version: %%version%%
      )
    TEMPLATE

    practice_template = <<~TEMPLATE
      p_%%short%% = Practice.create(
        domain: d_%%domain_title%%,
        title: "%%title%%",
        short: "%%short%%",
        descr: "%%descr%%",
        version: %%version%%
      )
    TEMPLATE

    activity_template = <<~TEMPLATE
      a_%%activity_varname%% = Activity.create(
        practice: p_%%practice_short%%,
        bsid: "%%bsid%%",
        title: "%%title%%",
        descr: "%%descr%%",
        level: %%level%%,
        version: %%version%%
      )
    TEMPLATE

    vertical_template = <<~TEMPLATE
      v_%%name%% = Vertical.create(
        name: "%%name%%",
        numfirms: %%numfirms%%,
        version: %%version%%
      )
    TEMPLATE

    activity_vertical_template = <<~TEMPLATE
      ActivityVertical.create(activity: a_%%activity_varname%%, vertical: v_%%vertical_name%%, count: %%count%%, version: %%version%%)
    TEMPLATE

    puts substitute(vertical_template, name: "Earth", numfirms: 109, version: 8)

    data[:domains].each do |domain_data|
      puts substitute(domain_template, domain_data)
      domain_data[:practices].each do |practice_data|
        parent_data = { domain_title: domain_data[:title] }
        puts substitute(practice_template, practice_data.merge(parent_data))
        practice_data[:activities].each do |activity_data|
          activity_varname = activity_data[:bsid].gsub(/[^\w]/, "")
          parent_data = { practice_short: practice_data[:short], activity_varname: activity_varname }
          puts substitute(activity_template, activity_data.merge(parent_data))

          activity_data[:count].each do |vertical_name, count|
            av_data = {
              activity_varname: activity_varname,
              vertical_name: vertical_name.to_s,
              count: count,
              version: activity_data[:version]
            }
            puts substitute(activity_vertical_template, av_data)
          end
        end
      end
    end
  end
end
