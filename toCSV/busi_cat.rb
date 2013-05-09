#INSERT INTO business_cat (businessid, catid)
#SELECT b.id, c.id
#FROM business b
#LEFT OUTER JOIN category c ON 1=1
#WHERE b.guid = 'rncjoVoEFUJGCUoC1JgnUA'
#AND c.name IN ("Accountants", "Professional Services")

require "rubygems"
require "json"

outfile = File.open("busi_cat.sql", 'w')

file = open("../data/training/yelp_training_Set_business.json")
json = file.read
parsed = JSON.parse(json)

parsed["data"].each do |busi|
	if busi['categories'].length > 0
		outfile.write("INSERT INTO business_cat (businessid, catid) SELECT b.id, c.id FROM business b LEFT OUTER JOIN category c ON 1=1 WHERE b.guid = '");
		outfile.write("#{busi['business_id']}' AND c.name IN (")
		
		categoryList = ""

		busi['categories'].each do |category|
			categoryList +=  "\"" + category + "\","
		end

		outfile.write(categoryList[0, categoryList.length - 1])
		outfile.write(");")
		outfile.write("\n")
	end
end

outfile.close
file.close