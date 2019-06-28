require 'van'

describe Van do
  it { is_expected.to respond_to :collect_broken }
  let(:dockingstation) { double(:dockingstation) }
  let(:bike) { double(:bike) }
  
  it 'collects broken bikes' do
    allow(dockingstation).to receive(:dock).with(bike).and_return(bike)
    allow(bike).to receive(:broken?).and_return(true)
    allow(bike).to receive(:dock).and_return(:bike)
    bike1 = double(:bike)
    bike2 = double(:bike)
    dockingstation = double(:dockingstation)
    dockingstation.dock(bike1)
    bike2.report_bike
    dockingstation.dock(bike2)
    expect (van.collect_broken(dockingstation)).to eq bike2
  end
end