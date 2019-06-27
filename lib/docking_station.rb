require 'pry'

class DockingStation

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.size >= 20
  end

  def empty?
    @bikes.empty?
  end


end

class Bike
  def working?
  end
end
 #binding.pry
