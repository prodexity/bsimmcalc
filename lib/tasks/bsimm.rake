namespace :bsimm do
  desc "Extracts data from bsimm.com"
  task generate_seeds_from_web: :environment do |t|
    require 'nokogiri'
    require 'open-uri'
    require_relative './bsimm_seeder'

    t.extend BsimmSeeder

    puts("Downloading data...")

    data = { domains: t.domains }
    data[:domains].each do |domain|
      puts("  + Domain: " + domain[:title])
      domain[:practices] = t.practices(domain[:url])
      domain[:practices].each do |practice|
        practice[:activities] = t.activities(practice[:url])
        puts("    + Practice: " + practice[:title] + " (" + practice[:activities].count.to_s + " activities)")

        # this is kind of a hack, but on the domain url with the list of practices,
        # the short name for the practice is not displayed, so it's written back from here
        practice[:short] = practice[:activities][0][:practice_short] if practice[:short].nil?
      end
    end

    seeds = t.seeds(data)
    path = Rails.root.to_s + "/db/seeds.rb"
    path += Time.now.utc.strftime(".%Y%m%d_%H%M%S") if File.exist?(path)
    puts("Writing seeds to " + path)
    File.write(path, seeds)
    puts("Done.")
  end
end
