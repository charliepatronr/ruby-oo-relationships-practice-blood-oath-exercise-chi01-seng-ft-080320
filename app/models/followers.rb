


class Followers

    attr_accessor :name, :age, :life_motto, :cults

    @@all = [ ]

    def initialize (name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @cults = [ ]
        self.class.all << self
    end 

    def self.all
        @@all
    end

    def join_cult(new_cult)
        new_cult.followers << self
    end

    def cults
        ##return an arr of this followers cults


    end




end