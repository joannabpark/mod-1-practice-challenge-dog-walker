class DogWalker
  attr_reader :name
  attr_accessor :favorite_breed

  @@all = []

  def initialize(name, favorite_breed)
    @name = name
    @favorite_breed = favorite_breed

    @@all << self
  end

  def self.all
    @@all
  end

  def walks
    Walk.all.select do |walk_instance|
      walk_instance.dog_walker == self
    end
  end

  def dogs
    self.walks.map do |walk_instance|
      walk_instance.dog.name
    end
  end

  def give_walk(length_in_minutes, dog)
    new_walk = Walk.new(length_in_minutes, dog, self)
  end

  def length_of_all_walks
    walk_minutes = self.walks.map do |walk|
                     walk.length_in_minutes
    end
    walk_minutes.sum
  end

  def walk_counts
    self.walks.count
  end

  def self.most_walks
    self.all.max_by do |walk_instance|
      walk_instance.walk_counts
    end
  end

end
