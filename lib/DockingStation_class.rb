class DockingStation
attr_reader :bike


def release_bike
 @bike = Bike.new
end

def dock_bike

end
end


class Bike

def working?
 return true
end

end

