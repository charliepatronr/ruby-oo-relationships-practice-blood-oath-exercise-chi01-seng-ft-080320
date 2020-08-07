require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

f1 = Followers.new("charlie", 24, "code life motto")
f2 = Followers.new("Muhammet", 48, "coding is fun")

c1 = Cults.new("Flatiron", "Chicago", 2000, "learn to code")
c2 = Cults.new("Flatiron 2", "New York", 1995, "Coding is hard")
c3 = Cults.new("Coding School", "New York", 1908, "Same location cult")


f3 = c2.recruit_follower("john", 30, "this is a test")

c1.cult_population

finder_method = Cults.find_by_name("Flatiron")

find_by_location = Cults.find_by_location("New York")

find_by_year = Cults.find_by_founding_year(2000)

f2.join_cult(c1)


binding.pry






# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits