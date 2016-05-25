require_relative 'bike'

class DockingStation
  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    raise 'No bikes in station!' if empty?
    @bikes.shift
    Bike.new
  end

  def dock(bike)
     raise "Dock full!" if full?
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
