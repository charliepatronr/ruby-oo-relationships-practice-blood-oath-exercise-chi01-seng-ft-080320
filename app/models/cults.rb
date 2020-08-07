
class Cults

    attr_accessor :name, :location, :founding_year, :slogan, :followers

    @@all = [ ]

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @followers = []
        self.class.all << self
    end

    def self.all
        @@all
    end

    def recruit_follower(follower_name, follower_age, follower_lifemotto)
        self.followers << Followers.new(follower_name, follower_age, follower_lifemotto)
    end
    
    def cult_population
        self.followers.length
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


end #end of class cult

