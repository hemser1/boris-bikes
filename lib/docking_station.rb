require 'pry'

class DockingStation
DEFAULT_CAPACITY = 20

    attr_accessor :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def capacity
    @capacity
  end

  def bikes
    @bikes
  end

  def release_bike
    fail 'No bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

  attr_reader :bike

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end

class Bike
  def working?
  end
end
 #binding.pry
