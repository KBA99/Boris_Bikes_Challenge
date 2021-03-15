require 'docking_station'

describe DockingStation do

  describe 'Can dock and release bikes' do
    it { is_expected.to respond_to(:release_bike)}
    it { is_expected.to respond_to(:dock).with(1).argument}
    end

  describe 'initialization' do 
    subject { DockingStation.new }
    let(:bike) { Bike.new}
    it 'defaults capacity' do 
      described_class::DEFAULT_CAPACITY.times do 
        subject.dock(bike)
      end
      expect {subject.dock(bike) }.to raise_error 'Docking station full'
    end
  end
  
  it 'does not release broken bikes' do 
    bike = Bike.new
    bike.report_broken
    subject.dock bike
    expect {subject.release_bike}.to raise_error 'No bikes available'
  end
  #   it 'has a variable capacity' do
  #     docking_station = DockingStation.new(50)
  #     50.times { docking_station.dock Bike.new }
  #     expect { docking_station.dock Bike.New }.to raise_error 'Docking stationf full'
  #   end
  # end

  #   it 'has a default capacity' do 
  #     expect(subject.capacity).to eq(DockingStation::DEFAULT_CAPACITY)
  #   end
  # end

  describe '#release_bike' do
    # it 'Can release bike' do
    #   expect(DockingStation.new).to respond_to(:release_bike)
    # end

    # it 'releases working bikes' do
    #   bike = subject.release_bike
    #   expect(bike).to be_working
    # end

    # it 'responds to release_bike' do
    #   bike = subject
    #   expect(subject).to respond_to(:release_bike)
    # end

    # it 'releases a bike' do 
    #   bike = subject
    #   subject.dock(bike)
    #   expect(subject.release_bike).to eq bike
    # end

    it 'raises an error when there are no bikes avialable' do
      expect { subject.release_bike }.to raise_error 'No bikes available'
    end

  end



  describe '#dock' do 
    # it 'docks something' do
    #   bike = subject
    #   expect(subject.dock(bike)).to eq(bike)
    # end

    # it 'returns docked bike' do
    #   bike = subject
    #   subject.dock(bike)
    #   expect(subject.bike).to eq(bike)
    # end

    it 'raises an error when full' do 
      subject.capacity.times { subject.dock Bike.new}
      expect { subject.dock double(Bike.new) }.to raise_error 'Docking station full'
    end
  end

end