class Dog
  attr_reader :name, :breed
  attr_accessor :good_dog

  @@all = []

  def initialize(name, breed, good_dog)
    @name = name
    @breed = breed
    @good_dog = good_dog

    @@all << self
  end

  def self.all
    @@all
  end

  def walks
    Walk.all.select do |walk_instance|
      walk_instance.dog == self
    end
  end

  def dog_walkers
    self.walks.map do |walk_instance|
      walk_instance.dog_walker.name
    end
  end

  def take_walk(length_in_minutes, dog_walker)
    new_walk = Walk.new(length_in_minutes, self, dog_walker)
  end

  def print_walk_details
   self.walks.map do |walk_instance|
    @walker_name = walk_instance.dog_walker.name
    @minutes= walk_instance.length_in_minutes
  end
  "#{@walker_name} walked #{self.name} for #{@minutes} minutes"
end

def self.good_dogs
  self.all.select do |dog_instance|
    dog_instance.good_dog == "Yes"
  end
end

end
