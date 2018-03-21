require 'pry'

class Owner
  # code goes here
  @@all = []
  # @@owner_count = 0
  attr_accessor :name, :pets
  attr_reader :species

  def initialize(species)
    @@all << self
    @species = species
    @pets = {:fishes => [],
      :dogs => [],
      :cats => []}

    # @@owner_count+=1
  end

  def self.all
    @@all
  end

  def self.reset_all
      self.all.clear
  end

  def self.count
    self.all.size
  end



  def say_species
    "I am a #{self.species}."
  end

    # binding.p
  def buy_fish(fish)
    new_fish = Fish.new(fish)
    # binding.pry
     @pets[:fishes] << new_fish



  end
  def buy_cat(cat)
    new_cat = Cat.new(cat)
    # binding.pry
     @pets[:cats] << new_cat



  end
  def buy_dog(dog)
    new_dog = Dog.new(dog)
    # binding.pry
     @pets[:dogs] << new_dog



  end

  def walk_dogs

    @pets[:dogs].each do |dog|
    dog.mood = "happy"
    # Dog.mood = "happy"
  end
  end

  def play_with_cats

    @pets[:cats].each do |cat|
    cat.mood = "happy"
    # Dog.mood = "happy"
    end
  end

  def feed_fish

    @pets[:fishes].each do |fish|
    fish.mood = "happy"
    # Dog.mood = "happy"
    end
  end

  def sell_pets

    @pets.each do |type, pets|

        # binding.pry
        # pets.clear
        pets.map do |pet|
          # binding.pry
          pet.mood = "nervous"
        end
        pets.clear
        # binding.pry
    end
  end

  def list_pets
      f_num = @pets[:fishes].size
      d_num = @pets[:dogs].size
      c_num = @pets[:cats].size
      "I have #{f_num} fish, #{d_num} dog(s), and #{c_num} cat(s)."

  end


end
