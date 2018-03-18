class Fish
  # code goes here
  attr_reader :name
  attr_accessor :mood

  @@all = []

  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
    @@all << name
  end

  # def name
  #   @name
  # end

  def self.all
    @@all
  end

end
