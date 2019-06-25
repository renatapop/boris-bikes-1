require 'bike'

describe Bike do
  it { is_expected.to respond_to :working?}

  it 'expects bike to be working' do
    expect(subject.working?).to eq true
  end
end
