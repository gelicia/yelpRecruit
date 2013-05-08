# JSON Parsing example
require "rubygems"
require "json"

outfile = File.open("business.csv", 'w')
outfile.write("guid,name,city,state,avgStars,long,lat,open,reviewCnt\n")

file = open("../data/training/yelp_training_Set_business.json")
json = file.read

parsed = JSON.parse(json)

parsed["data"].each do |busi|
# remember to escape commas camelback inn
	outfile.write("#{busi['business_id']},#{busi['name'].gsub(',', '\,')},#{busi['city'].gsub(',', '\,')},#{busi['state'].gsub(',', '\,')},#{busi['stars']},#{busi['longitude']},#{busi['latitude']},#{busi['open']},#{busi['review_count']}")

  #outfile.write(busi["business_id"] + "," + busi["name"].gsub(',', '\,') + "," + busi["city"] + "," + busi["state"] + "," + busi["stars"])
  outfile.write("\n")
end

outfile.close