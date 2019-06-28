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
    fail 'No bikes available' if bikes.all? { |bike| bike.working == false }
    i = 0
    while i < bikes.length do
      if bikes[i].working == true
        bikes.delete_at(i)
        puts "Bike released"
        break
      else
        i += 1
      end
    end
  end

  def dock(bike)
    fail 'Docking station full' if full?
    puts bike.working ? 'Bike working' : 'Bike not working'
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

  attr_accessor :working

  def initialize(working = true)
    @working = working
  end

end
 #binding.pry
