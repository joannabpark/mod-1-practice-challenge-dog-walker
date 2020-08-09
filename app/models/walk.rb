class Walk

    attr_reader :length_in_minutes, :dog, :dog_walker

    @@all = []

    def initialize(length_in_minutes, dog, dog_walker)
        @length_in_minutes = length_in_minutes
        @dog = dog
        @dog_walker = dog_walker
        @@all << self
    end

    def self.all
        @@all
    end

    def happy_walker?
        if self.dog_walker.favorite_breed == self.dog.breed
            true
        else
            false
        end
    end

    def print_details
        p "#{self.dog_walker.name} walked #{self.dog.name} for #{self.length_in_minutes} minutes"
    end

end
