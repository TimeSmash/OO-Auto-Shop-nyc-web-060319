
  # Y - Get a list of all owners

  # Y - Get a list of all the cars that a specific owner has

  # Y - Get a list of all the mechanics that a specific owner goes to

  # Y - Get the average amount of cars owned for all owners



class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_amount_cars_owned
    cars_per_owner = self.all.map do |owner| 
      # puts "#{owner.name} owns #{owner.cars.length} cars."
      owner.cars.length
    end
    (cars_per_owner.reduce(:+).to_f / cars_per_owner.length.to_f).round(2)

  end

  def cars #return all cars that owner owns
    Car.all.select {|car| car.owner == self }
  end

  def mechanics #get list of mechanics that owner goes to per car
    cars.map { |car| car.mechanic}
  end



end
