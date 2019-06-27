require 'boris_bikes'

describe Bike do
  it { is_expected.to respond_to :working?}
  it { is_expected.to respond_to :report_bike}

  it 'expects bike to be working' do
    expect(subject.working?).to eq true
  end

  it 'can be reported broken' do
     subject.report_bike
     expect(subject).to be_broken
  end

end
