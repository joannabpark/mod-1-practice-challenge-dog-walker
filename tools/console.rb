# require and load the environment file
require_relative '../config/environment.rb'

# call this method to reload your models as you write code
def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

joe = DogWalker.new("Joe", "Yorkshire Terrier")
jen = DogWalker.new("Jen", "American Pitbull")
chris = DogWalker.new("Chris", "Giant Schnauzer")
kelly = DogWalker.new("Kelly", "English Bulldog Mastiff")
joanna = DogWalker.new("JoAnna", "Italian Greyhound")

max = Dog.new("Max", "German Shepherd", "No")
bronson = Dog.new("Bronson", "American Pitbull", "Yes")
sammy = Dog.new("Samantha", "English Bulldog Mastiff", "Yes")
joy = Dog.new("Jjoa", "Yorkshire Terrier", "No")
happy = Dog.new("Happy", "Pomeranian", "No")

walk_1 = Walk.new(20, max, kelly)
walk_2 = Walk.new(40, bronson, joanna)
walk_3 = Walk.new(30, joy, joanna)
walk_4 = Walk.new(70, happy, chris)
walk_5 = Walk.new(35, joy, joe)
walk_6 = Walk.new(45, bronson, joanna)



# ===== WARNING! DO NOT EDIT BELOW THIS LINE ===== #
binding.pry
0
