require "rubygems"
require "json"

outfile = File.open("business.csv", 'w')
outfile.write("guid,name,city,state,avgStars,long,lat,open,reviewCnt\n")

file = open("../data/training/yelp_training_Set_business.json")
json = file.read

parsed = JSON.parse(json)

parsed["data"].each do |busi|
# open true/false to 1/0 done with find/replace after (todo fix if annoying)
	outfile.write("#{busi['business_id']},#{busi['name'].gsub(',', '\,')},#{busi['city'].gsub(',', '\,')},#{busi['state'].gsub(',', '\,')},#{busi['stars']},#{busi['longitude']},#{busi['latitude']},#{busi['open']},#{busi['review_count']}")
	outfile.write("\n")
end

outfile.close
file.close