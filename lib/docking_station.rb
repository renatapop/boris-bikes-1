require 'pry'
require_relative 'bike'

class DockingStation
  attr_reader :capacity
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if any_working
    @bikes.pop
  end

  def dock(bike)
    raise 'Station is full' if full?
    @bikes << bike
  end

  def release_broken
    broken_bikes = []
    @bikes.each_with_index do |bike, index|
      if bike.broken? == true
        broken_bikes << bike
        @bikes.delete_at(index)
      end
    end
    broken_bikes
  end

  private
  attr_reader :bikes

  def any_working
    working_bikes = []
    broken_bikes = []
    @bikes.each do |bike|
      if bike.broken? == true
        broken_bikes << bike
      else 
        working_bikes << bike
      end
    end
    working_bikes.empty? ? true : false
  end

  def full?
    @bikes.length >= capacity
  end

  def empty?
    @bikes.empty?
  end

end

docking_station = DockingStation.new
bike = Bike.new

# binding.pry
