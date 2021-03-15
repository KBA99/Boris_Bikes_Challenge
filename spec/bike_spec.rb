require 'bike.rb'

describe Bike do
  it "responds to :working?" do
    is_expected.to respond_to(:working?)
  end
  # it {  is_expected.to respond_to :working?}

  
end