require_relative 'bike'

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bike

  def initialize
    @bikes = []
  end

  def dock_bike(bike)
  	fail 'Error: Docking Station Full' if full?
	  @bikes << bike
  end

  def release_bike
    fail 'Error. No bikes available' if empty?
    @bikes.pop
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

  end


