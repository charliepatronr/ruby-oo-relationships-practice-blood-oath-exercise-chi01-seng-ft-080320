require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#CULT INSTANCES
jonestown = Cult.new("Jonestown", "Guyana", 1972, "Drink the Flavor-Aid")
heavens_gate = Cult.new("Heaven's Gate", "Oregon", 1995, "Haley Bopp is Coming")
scientology = Cult.new("Scientology", "Cali", 1955, "L. Ron Hubbard Lives")
maga = Cult.new("MAGA", "MAGA Country", 1959, "Many of People Are Saying It's Going to Be Great")

#FOLLOWER INSTANCES
nick = Follower.new("Nick", 33, "Buy Bitcoin")
jeff = Follower.new("Jeff", 35, "No MAGA for Me")
ignas = Follower.new("Ignas", 24, "It's Amazing")
nicks_dad = Follower.new("Tom", 64, "Bring Back Our Jobs")
nick = Follower.new("Nick", 33, "Buy Bitcoin")
test1 = Follower.new("test1", 35, "No MAGA for Me")
test2 = Follower.new(";aksnjd", 24, "It's Amazing")
test3 = Follower.new(";lksd", 64, "Bring Back Our Jobs")
test4 = Follower.new("ajksnd", 33, "Buy Bitcoin")
test5 = Follower.new("test5", 35, "No MAGA for Me")
test6 = Follower.new("ajsnd", 24, "It's Amazing")
test7 = Follower.new("Tom/klsmd", 64, "Bring Back Our Jobs")
young_follower = Follower.new("Charlie", 12, "Code everyday")




#BLOOD OATH INSTANCES
bo_one = BloodOath.new(nick, jonestown, "2020-01-15")
bo_two = BloodOath.new(nick, heavens_gate, "2020-02-15")
bo_three = BloodOath.new(jeff, scientology, "2020-07-15")
bo_four = BloodOath.new(ignas, scientology, "2000-02-15")
bo_five = BloodOath.new(nicks_dad, maga, "2016-02-15")
bo_six = BloodOath.new(nick, scientology, "2020-08-04")
bo_seven = BloodOath.new(test1, jonestown, "2020-01-15")
bo_eight = BloodOath.new(test2, heavens_gate, "2020-02-15")
bo_nine = BloodOath.new(test3, scientology, "2020-07-15")
bo_ten = BloodOath.new(test4, scientology, "2000-02-15")
bo_11 = BloodOath.new(test5, maga, "2016-02-15")
bo_12 = BloodOath.new(test6, scientology, "2020-08-04")
bo_13 = BloodOath.new(test3, maga, "2016-02-15")
bo_14 = BloodOath.new(test2, scientology, "2020-08-04")
bo_15 = BloodOath.new(test3, maga, "2016-02-15")
bo_16 = BloodOath.new(test6, scientology, "2020-08-04")


## recruit_follower cult
#cult_population cult 

## follower join cult 


binding.pry






binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits