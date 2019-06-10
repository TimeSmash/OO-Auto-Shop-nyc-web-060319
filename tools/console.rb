require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
funky_kong = Mechanic.new("Funky Kong", "racing bike")
toadsworth = Mechanic.new("Toadsworth", "racing kart")
daisy = Mechanic.new("Daisy", "racing kart")


toad = CarOwner.new("Toad")
peach = CarOwner.new("Peach")
mario = CarOwner.new("Mario")

sports_coupe = Car.new("Mushroom Motors", "Sports Coupe", "racing kart")
sports_coupe.owner = peach
sports_coupe.mechanic = toadsworth

heart_coach = Car.new("Mushroom Motors", "Heart Coach", "racing kart")
heart_coach.owner = peach
heart_coach.mechanic= toadsworth


wario_bike = Car.new("Colosseum", "Wario Bike", "racing bike")
wario_bike.owner = toad
wario_bike.mechanic = funky_kong

toad_kart = Car.new("Mushroom Motors", "Toad Kart", "racing kart")
toad_kart.owner = toad
toad_kart.mechanic = toadsworth

blue_falcon = Car.new("F-Zero Inc.", "Blue Falcon", "racing kart")
blue_falcon.owner = mario
blue_falcon.mechanic = daisy

binding.pry
