require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :capacity, :bikes

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = capacity
  end

  def dock_bike(bike)
    fail 'Error: Docking Station Full' if full?
    @bikes << bike
  end

  def release_bike
    fail 'Error. No bikes available' if empty?
    @new_bike = @bikes.find{|bike| !bike.broken?}
    unless @new_bike
      fail 'Error. No working bikes available'
    else
      @bikes.delete(@new_bike)
    end
  end

  private

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
