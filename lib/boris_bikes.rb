require 'pry'

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
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise 'Station is full' if @bikes.length >= 20
    @bikes << bike
  end

end

docking_station = DockingStation.new
docking_station.initialize

# 20.times {docking_station.dock Bike.new}
# binding.pry