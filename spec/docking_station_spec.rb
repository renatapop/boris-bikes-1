require 'boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }
  it { is_expected.to respond_to(:dock).with(1).argument}
  # it { is_expected.to respond_to(:bikes)}
  #expect {:release_bike}to raise_error("Whoops, no bike here!")
  # it { is_expected.to respond_to(:report_bike).with(1).argument}

  it "docks something" do
    bike = Bike.new
    expect(subject.dock(bike)[0]).to eq bike
  end
  # it "returns docked bikes" do
  #   bike = Bike.new
  #   subject.dock(bike)
  #   expect(subject.bikes[0]).to eq bike
  # end
  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
  describe '#release_bike' do
    it "Error message if no available bike" do
    # dock = DockingStation.new
    expect { subject.release_bike }.to raise_error 'No bikes available'
    end
  end
  describe '#dock' do
    it "Should throw an error if station is full" do
      subject.capacity.times {subject.dock Bike.new}
      expect { subject.dock(Bike.new) }.to raise_error 'Station is full'
    end
  end
  describe '#initiliaze' do
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity' do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Station is full'
    end
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new}.to raise_error 'Station is full'
    end
  end
  # describe '#report_bike' do
  #   it 'bike.working returns false when reported broken' do
  #     bike = Bike.new
  #     subject.report_bike(bike)
  #     expect(bike.working?).to eq false
  #   end
  # end
end
