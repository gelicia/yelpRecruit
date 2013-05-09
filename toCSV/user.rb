require "rubygems"
require "json"

outfile = File.open("user.csv", 'w')
outfile.write("guid,avgStars,reviewCount\n")

file = open("../data/training/yelp_training_set_user.json")
json = file.read

parsed = JSON.parse(json)

parsed["data"].each do |busi|
# open true/false to 1/0 done with find/replace after (todo fix if annoying)
	outfile.write("#{busi['user_id']},#{busi['average_stars']},#{busi['review_count']}")
	outfile.write("\n")
end

outfile.close
file.close