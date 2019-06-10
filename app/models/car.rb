# Y - Get a list of all cars

# Y - Get a list of all car classifications

# Y - Get a list of mechanics who have expertise that matches the car classification

class Car

  attr_reader :make, :model

  attr_accessor :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  def self.classification
    self.all.map {|car| car.classification}.uniq
  end

  def find_mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end


end
