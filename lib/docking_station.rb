require 'pry'

class DockingStation
  #attr_reader :bike

  def release_bike
    @bike = Bike.new
  end

  def dock(bike)
    bike
  end

  def bike
  end

end

class Bike
  def working?
  end
end
binding.pry
