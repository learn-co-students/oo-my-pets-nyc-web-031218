require 'pry'
class Owner

  @@all = []
  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @pets = pets
    @@all << self
  end

  def say_species
    "I am a #{@species}."
  end

  def pets
    @pets ||= {
      :fishes =>[],
      :dogs => [],
      :cats => []
    }
  end

  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end

  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end

  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end

  def walk_dogs
    @pets[:dogs].map { |d| d.mood = 'happy' }
  end

  def play_with_cats
    @pets[:cats].map { |c| c.mood = 'happy' }
  end

  def feed_fish
    @pets[:fishes].map { |f| f.mood = 'happy' }
  end

  def sell_pets
    @pets.each do |species, pets|
      pets.map{ |p| p.mood = 'nervous' }
    end
    @pets = {
      :fishes =>[],
      :dogs => [],
      :cats => []
    }
  end

  def list_pets
    "I have #{@pets[:fishes].count} fish, #{@pets[:dogs].count} dog(s), and #{@pets[:cats].count} cat(s)."
  end

  def self.reset_all
    original = @@all.count
    @@all = []
    original
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end


end
