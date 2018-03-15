require 'pry'

class Owner
  @@owners = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@owners << self
    @pets = {
      cats: [],
      dogs: [],
      fishes: []
    }
  end

  def self.reset_all
    @@owners = []
  end

  def self.all
    @@owners
  end

  def self.count
    @@owners.length
  end

  def say_species
    "I am a #{@species}."
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
    #binding.pry
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, cdfs|
      #binding.pry
      cdfs.each do |pet|
        pet.mood = "nervous"
      end
    end
    @pets = {}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."

  end

end
