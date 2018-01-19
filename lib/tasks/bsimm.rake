namespace :bsimm do
  desc "Extracts data from bsimm.com"
  task extract_from_web: :environment do
    require 'nokogiri'
    require 'open-uri'

    bsimm_url = "https://bsimm.com"
    page = Nokogiri::HTML(open(bsimm_url + "/framework.html"))
    data = { domains: [] }

    # Domains
    page.css("section.component-card-b div.card-text").each do |framework_html|
      domain = {
        name: framework_html.css("h4").text.strip,
        descr: framework_html.css("p").text.strip,
        url: framework_html.css("a").attr("href").text.strip,
        practices: []
      }
      data[:domains] << domain
    end

    # Practices
    data[:domains].each do |domain|
      page = Nokogiri::HTML(open(bsimm_url + domain[:url]))
      page.css("section.component-card-b div.card-text").each do |domain_html|
        practice = {
          name: domain_html.css("h4").text.strip,
          short: nil,
          descr: domain_html.css("p").text.strip,
          url: domain_html.css("a").attr("href").text.strip,
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
              earth: parts[5] # number of firms performing the activity globally ("Earth" vertical)
            }
          }
          practice[:activities] << activity

          # this is kind of a hack, but on the domain url with the list of practices,
          # the short name for the practice is not displayed, so it's written back from here
          practice[:short] = activity[:practice_short] if practice[:short].nil?
        end
      end
    end
  end
end
