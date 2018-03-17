class Owner

  attr_reader :name, :species

  @@all = []

  def initialize(species)
    # @name = name
    @@all << self
    @species = "human"
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def say_species
    "I am a #{@species}."
  end

  def name=(name)
    @name = name
  end

end
