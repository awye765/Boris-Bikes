require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes in station!' unless @bikes.size > 0
    @bikes.shift
    Bike.new
  end

  def dock(bike)
     raise "Dock full!" unless @bikes.size < 20
     @bikes << Bike.new
  end

end
