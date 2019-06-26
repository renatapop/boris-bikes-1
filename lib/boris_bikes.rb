class Bike
def working?
    true
  end
end


class DockingStation
  attr_reader :bike

  def release_bike
    raise if @bike.nil?
  end

  def dock(bike)
    @bike = bike
  end

end
