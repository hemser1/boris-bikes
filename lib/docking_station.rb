require 'pry'

class DockingStation
  
  attr_reader :bike

  def release_bike
    @bike ? @bike : fail('No bikes available')
  end

  def dock(bike)
    @bike = bike
  end

end

class Bike
  def working?
  end
end
binding.pry
