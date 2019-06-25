require 'docking_station'

describe 'DockingStation' do
  it 'respons to release_bike' do
    expect(subject.release_bike).to eq true
  end
end
