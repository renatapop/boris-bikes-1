class Bike

  def working?
    true
  end

end


class DockingStation

  def release_bike
    Bike.new
  end

end
