


class Follower

    attr_accessor :name, :age, :life_motto, :cults

    @@all = [ ]

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        self.class.all << self
    end 


    def join_cult(cult)
        if(self.age >= cult.age_limit)
            BloodOath.new(self, cult, "01-01-2020")
        else 
            "Sorry! You are too young to join"
        end
    end 

    def cults
        BloodOath.all.select do |individual_blood_oaths|
            individual_blood_oaths.follower == self 
        end
    end

    def my_cults_slogans
        slogans = ""
        BloodOath.all.each do |individual_blood_oaths|
            if(individual_blood_oaths.follower == self)
                slogans += individual_blood_oaths.cult.slogan + " "
            end
        end
        slogans
    end


    def fellow_cult_members
        fellow_members = [ ]
        personal_cults  = [ ]
        BloodOath.all.each do |individual_blood_oaths|
            if(individual_blood_oaths.follower == self)
                personal_cults << individual_blood_oaths.cult
            end
        end
        personal_cults.each do |my_cult|
            BloodOath.all.each do |individual_blood_oaths|
                if(my_cult == individual_blood_oaths.cult && individual_blood_oaths.follower.name != self.name)
                    fellow_members << individual_blood_oaths.follower.name
                end
            end
        end 
        fellow_members
    end

    def self.all
        @@all
    end


    def self.of_a_certain_age(age)
        self.all.select do |follower|
            follower.age >= age
        end 
    end 

    def self.most_active
        most_active = {}
        self.all.each do |individual_follower|
            most_active_counter = 0
            BloodOath.all.each do |individual_blood_oaths|
                if(individual_follower.name == individual_blood_oaths.follower.name)
                    most_active_counter += 1
                end
            end 
            most_active[individual_follower.name] = most_active_counter
        end
        most_active.sort_by{|k,v| v}.last.first
    end


    def self.top_ten
        most_active = {}
        most_active_arr = []
        counter = 1
        self.all.each do |individual_follower|
            most_active_counter = 0
            BloodOath.all.each do |individual_blood_oaths|
                if(individual_follower.name == individual_blood_oaths.follower.name)
                    most_active_counter += 1
                end
            end 
            most_active[individual_follower.name] = most_active_counter
        end
        most_active.sort_by{|k,v| -v}

        most_active.each do |k, v|
            if(counter<= 10)
                most_active_arr << k 
                counter += 1
            end
        end
        most_active_arr
    end






end