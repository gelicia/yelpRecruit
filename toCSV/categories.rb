require "rubygems"
require "json"

outfile = File.open("categories.csv", 'w')
outfile.write("category\n")

file = open("../data/training/yelp_training_Set_business.json")
json = file.read
parsed = JSON.parse(json)

catArr = Array.new()

parsed["data"].each do |busi|
	busi['categories'].each do |category|
		catArr.push(category)
	end
end

catArr2 = catArr.uniq

catArr2.each do |category|
	outfile.write(category)
	outfile.write("\n")
end

outfile.close
file.close