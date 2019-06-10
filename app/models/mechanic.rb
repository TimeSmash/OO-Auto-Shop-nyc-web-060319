
  # Y - Get a list of all mechanics

  # Y - Get a list of all cars that a mechanic services

  # Y - Get a list of all the car owners that go to a specific mechanic

  # Y - Get a list of the names of all car owners who
  # go to a specific mechanic

class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars_working_on
  Car.all.select {|car| car.mechanic == self}
end

def owners_i_serve
  cars_working_on.map {|car| car.owner}.uniq
end

def owners_i_serve_names
  owners_i_serve.map {|owner| owner.name}e
end

end
