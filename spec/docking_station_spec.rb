require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument}
  it { is_expected.to respond_to(:bikes)}
  #expect {:release_bike}to raise_error("Whoops, no bike here!")
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)[0]).to eq bike
  end
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes[0]).to eq bike
  end
  describe '#release_bike' do
    it "Error message if no available bike" do
    # dock = DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  describe '#dock' do
    it "Should throw an error if station is full" do
      20.times {subject.dock Bike.new}
      expect { subject.dock(Bike.new) }.to raise_error 'Station is full'
    end
  end
end
