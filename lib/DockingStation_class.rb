require "./lib/Bike.rb"

class DockingStation

DEFAULT_CAPACITY = 20
attr_accessor :capacity

def initialize(capacity = DEFAULT_CAPACITY)
  	@capacity = capacity
  	@bikes = []	
end

def dock_bike(bike)
 	fail "docking station full" if full?
 	bikes << bike
end

def release_bike
 	fail "No bikes available" if empty?
 	bikes.pop
end

private

attr_reader :bikes

def full?
	bikes.count >= capacity
end


def empty?
	bikes.empty?
end

end


