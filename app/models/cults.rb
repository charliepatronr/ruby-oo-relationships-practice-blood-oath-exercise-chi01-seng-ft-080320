
class Cult

    attr_accessor :name, :location, :founding_year, :slogan, :followers
    attr_reader :age_limit

    @@all = [ ]

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @age_limit = 18
        self.class.all << self
    end


    def recruit_follower (follower)
        if(follower.age >= self.minimum_age)
            BloodOath.new(follower, self, "01-01-2020")
        else 
            "Sorry! You are too young to join"
        end
    end 
    
    def cult_population
        how_many_oaths = BloodOath.all.select do |individual_blood_oath|
            individual_blood_oath.cult == self 
        end 
        how_many_oaths.size
    end

    def average_age
        age = 0
        divisor = 0
        BloodOath.all.each do |individual_blood_oath|
            if(individual_blood_oath.cult == self)
                age += individual_blood_oath.follower.age 
                divisor += 1
            end 
        end 
        age.to_f / divisor
    end 
    
    def minimum_age
        self.age_limit
    end


    def my_followers_mottos
        #map returns nil values when coditional not met 
        #select returns entire blood oath instance and does not follow through after conditional
        mottos = " "
        BloodOath.all.each do |individual_blood_oath|
            if(individual_blood_oath.cult == self)
                mottos += " " + individual_blood_oath.follower.life_motto.to_s
            end 
        end 
        mottos
    end


    def self.all
        @@all
    end

    def self.find_by_name(cult_instance_name)
        self.all.find do |cult|
            cult.name == cult_instance_name
        end
    end

    def self.find_by_location(location)
        self.all.select do |cult|
            cult.location == location
        end
    end

    def self.find_by_founding_year(year)
        self.all.select do |cult|
            cult.founding_year == year
        end
    end


    def self.least_popular
        total = 0
        hash = {}
        self.all.each do |individual_cult|
            BloodOath.all.each do |individual_blood_oath|
                if (individual_cult.name == individual_blood_oath.cult.name)
                    total += 1
                end
            end
            hash[individual_cult.name] = total
        end
        least_popular_cult = hash.sort_by {|k, v| v}.first.first
        self.find_by_name(least_popular_cult)
    end

    def self.most_common_location
        hash = {}
        location = ''
        counter = 0
        while counter < self.all.size do 
            location = self.all[counter].location
            location_counter = 0
            self.all.each do |individual_cult|
                if(location == individual_cult.location)
                    location_counter += 1
                end 
            end
            hash[self.all[counter].location] = location_counter
            counter += 1
        end 
        most_common = hash.sort_by {|k, v| v}.last.first
    end


end 
