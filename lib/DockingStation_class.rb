require "./lib/Bike.rb"

class DockingStation

def initialize
  @bikes = []
end

def dock_bike(bike)
 fail "docking station full" if @bikes.count >= 20
 @bikes << bike
end

def release_bike
 fail "No bikes available" if @bikes.empty?
 @bikes.pop
end

end


