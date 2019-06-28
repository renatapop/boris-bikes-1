class Van
  def collect_broken(docking_station)
    @stored_bikes = docking_station.release_broken
  end
end