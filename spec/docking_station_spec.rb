require 'docking_station.rb'

describe DockingStation do

  # it 'Can release bike' do
  #   expect(DockingStation.new).to respond_to(:release_bike)
  # end
  
  it 'responds to release_bike' do
    expect(subject).to respond_to :release_bike
  end

end