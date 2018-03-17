require 'pry'

class Owner

  attr_reader :species
  attr_writer :name
  attr_accessor :pets

  @@owners = []

  def initialize(species)
    @species = species
    @pets = {fishes: [], cats: [], dogs: []}
    @@owners << self
  end

  def self.all
    #binding.pry
    @@owners
  end

  def self.count
    #binding.pry
    @@owners.length
  end

  def self.reset_all
    @@owners = []
  end

  def say_species
    "I am a #{@species}."
  end

  def name
    @name
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].each { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].each { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].each { |fish| fish.mood = "happy" }
  end

  def sell_pets
    #binding.pry
    @pets.each do |species, org|
      org.each do |pets|
        pets.mood = "nervous"
      end
    end
    @pets[:fishes] = []
    @pets[:dogs] = []
    @pets[:cats] = []
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end


end
