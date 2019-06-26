require 'pry'

class DockingStation
  
  attr_reader :bike

  def release_bike
    @bike ? @bike : fail('No bikes available')
  end

  def dock(bike)
    @bike ? fail('Station full') : @bike = bike
  end

end

class Bike
  def working?
  end
end
# binding.pry
