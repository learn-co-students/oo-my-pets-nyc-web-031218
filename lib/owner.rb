class Owner

  @@owners = []
  @@owner_count = 0

  attr_reader :species
  attr_accessor :name, :pets

  def initialize(species)
    @species = species
    @@owners << self
    @@owner_count += 1
    @pets = {fishes: [], dogs: [], cats: []}
  end

  def self.all
    @@owners
  end

  def self.count
    @@owner_count
  end

  def self.reset_all
    @@owners.clear
    @@owner_count = 0
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
    @pets.each do |animal, pets|
      pets.each do |pet|
        pet.mood = "nervous"
      end
      pets.clear
    end
  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

end
