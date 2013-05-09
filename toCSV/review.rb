require "rubygems"
require "json"

outfile = File.open("review.csv", 'w')
outfile.write("userGuid,businessGuid,guid,text,stars,date,usefulVotes\n")

file = open("../data/training/yelp_training_Set_review.json")
json = file.read

parsed = JSON.parse(json)

parsed["data"].each do |rev|
# open true/false to 1/0 done with find/replace after (todo fix if annoying)
	outfile.write("#{rev['user_id']},#{rev['business_id']},#{rev['review_id']},#{rev['text']},#{rev['stars']},#{rev['date']},#{rev['votes']['useful']}")
	outfile.write("\n")
end

outfile.close
file.close