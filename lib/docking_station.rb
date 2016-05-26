require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_accessor :capacity
  attr_reader :bikes

  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
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
    @bikes.size >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end

