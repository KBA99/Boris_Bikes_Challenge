require 'bike.rb'

describe Bike do
  it "responds to :working?" do
    is_expected.to respond_to(:working?)
  end
  # it {  is_expected.to respond_to :working?}

  describe '#reported_broke' do 
    it 'can report broken bikes' do
      expect(Bike.new).to respond_to(:report_broken)
    end
  end
end