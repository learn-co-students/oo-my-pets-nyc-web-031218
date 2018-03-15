require 'pry'
class Owner

  attr_accessor :name,  :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @species = species
    @mood = "nervous"
    @pets = {:fishes => [], :dogs => [], :cats => []}
    @@all << self

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


  def say_species
    "I am a #{@species}."

  end


  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)

  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)

  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)

  end

  def walk_dogs
    self.pets[:dogs].each{|dog|
      dog.mood = "happy"
    }

  end

  def play_with_cats
    self.pets[:cats].each{|cat|
      cat.mood = "happy"
    }

  end

  def feed_fish
    self.pets[:fishes].each{|fish|
      fish.mood = "happy"
    }
  end

  def sell_pets
    self.pets.each{|animal, pets|
      pets.each{|pet|
        pet.mood = "nervous"

      }
    }

    @pets = {}
  end

  def list_pets



    return "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."


  end



end

harry = Owner.new("human")
harry.walk_dogs

# binding.pry

puts "h"
