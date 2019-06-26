require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument}
  it { is_expected.to respond_to(:bike)}
  #expect {:release_bike}to raise_error("Whoops, no bike here!")
  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end
  it "returns docked bikes" do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
  describe '#release_bike' do
    it "Error message if no available bike" do
    # dock = DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
end
