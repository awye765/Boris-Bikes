require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def release_bike
    raise 'No bikes in station!' unless @bikes > 0
    @bikes -= 1
    Bike.new
  end

  def dock(bike)
     @bikes = bike
  end

end
