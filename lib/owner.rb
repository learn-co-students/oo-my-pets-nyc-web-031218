require "pry"

class Owner
  @@all = []

  #may not need this
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(name)
    # @name = name
    @species = name
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.length
  end

  def self.reset_all
    @@all.clear
    # @@all = []
  end

  def say_species
    #binding.pry
    "I am a #{self.species}."
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
    @pets[:dogs].each do |v|
      v.mood = "happy"
    end
  end

  def feed_fish
    @pets[:fishes].each do |v|
      v.mood = "happy"
    end
  end

  def play_with_cats
    @pets[:cats].each do |v|
      v.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |key, value|
      @pets[key].each do |v|
        v.mood = "nervous"
      end
    end
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
