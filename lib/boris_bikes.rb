
class Bike
  def working?
    true
  end
end

class DockingStation
  attr_reader :bikes

  def initialize
    # @bikes = bike
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Station is full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end

end
#
# docking_station = DockingStation.new
# docking_station.initialize

# 20.times {docking_station.dock Bike.new}
# binding.pry
