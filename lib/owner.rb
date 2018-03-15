require 'pry'
class Owner
  # code goes here
  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @name = ""
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self
  end

  def say_species
    return "I am a #{self.species}."
  end

  def buy_fish(name)
    self.pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    self.pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    self.pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    @pets.each do |type, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      @pets[type] = []
    end
  end

  def list_pets
    hash = Hash.new(0)
    str = "I have"
    @pets.each do |type, pets|
      pets.each do |pet|
        hash[type.id2name] += 1
      end
    end
    hash.each do |pets, num|
      str += " #{num} #{pets.chomp('es')}"
      str.chomp!('s')
      if str[-1] == 'h'
        str += ","
      else
        str += "(s),"
      end
    end
    str.chomp!(',')
    str+= '.'
    arr = str.split(" ")
    arr.insert(-3, "and")
    return arr.join(" ")
  end
  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.length
  end


end
