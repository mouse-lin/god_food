require 'open-uri'

namespace :db do
  desc "get foods data"
  task :pull => :environment do
    p "--- hacking datas... ---"
    doc = Nokogiri::HTML(open('http://www.lvtucafe.com/HDRobot/index.asp?'), nil, "GB18030")
    table_f = doc.search('table').first
    page_count = 0
    table_f.search("p a").each do |link|
      page_count += 1 if link.content != ""
    end
    p "--- override Foods data... --- "
    Food.delete_all
    p "--- creating new Foods data... ---"

    page_count.times do |n|
      doc_s = Nokogiri::HTML(open("http://www.lvtucafe.com/HDRobot/index.asp?page=#{ n + 1 }"), nil, "GB18030")
      table_s = doc_s.search('table').last
      table_s.search("tr").each_with_index do |tr, index|
        if index > 0
          array_key = [:food_number, :number, :shop, :name, :price, :food_type, :phone, :address]
          array_val = []
          tr.search("td").each_with_index do |td, index|
            if index < 8
              array_val.push td.content
            end
          end
          param_record = array_key.to_h(array_val)
          Food.create(param_record)
        end
      end
    end
  end
end
