class Bike
def working?
    true
  end
end


class DockingStation
  attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    raise 'Already has a bike docked' unless @bike.nil?
    @bike = bike
  end

end
