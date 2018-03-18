require "pry"
class Owner
  # code goes here
  attr_accessor :name, :pets
  attr_reader :species

  @@all = []
  @@count = 0
  @@reset_all = 0

  def initialize(species)
    @species = species
    @@all << self
    @@count+=1
    @pets={
      :fishes=>[],
      :dogs=>[],
      :cats=>[]}

  end

  def self.all
    @@all
  end

  def self.count
    @@count
  end

  def self.reset_all
    @@count = @@reset_all
  end

  def say_species
    "I am a #{self.species}."

  end

  def buy_fish(fish)
    new_fish = Fish.new(fish)
    @pets[:fishes] << new_fish
  end

  def buy_cat(cat)
    new_cat = Cat.new(cat)
    @pets[:cats] << new_cat
  end

  def buy_dog(dog)
    new_dog = Dog.new(dog)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs][0].mood="happy"
    # binding.pry
  end
  def play_with_cats
      self.pets[:cats][0].mood="happy"
  end
  def feed_fish
      self.pets[:fishes][0].mood="happy"
  end

  def sell_pets
    @pets.each do |animal, array|
      array.each do |key|
        # binding.pry
        key.mood = "nervous"
      end
    end
    @pets = {:fishes=>[],
    :dogs=>[],
    :cats=>[]}
  end

  def list_pets
    fishes_count= pets[:fishes].size
    cats_count= pets[:cats].size
    dogs_count= pets[:dogs].size
    "I have #{fishes_count} fish, #{dogs_count} dog(s), and #{cats_count} cat(s)."
    # binding.pry
  end

end
