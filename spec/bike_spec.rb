require 'bike'

describe Bike do
  it 'responds to a method "working?"' do
    expect(subject). to respond_to :working?
  end
end
