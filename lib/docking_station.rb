require_relative 'bike'

class DockingStation
  attr_accessor :capacity

  
  DEFAULT_CAPACITY = 20

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'No bikes available' if broken?
    @bikes.pop
  end

  private

  attr_reader :bike

  def empty?
    @bikes.empty?
  end

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def broken?
    true
  end
end
