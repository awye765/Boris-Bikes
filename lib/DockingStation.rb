require_relative 'bike'

class DockingStation

  attr_reader :bike

  def initialize 
    @bikes = []
  end

  def dock_bike(bike)
  	fail 'Error: Docking Station Full' if @bikes.count >= 20
	  @bikes << bike
  end

  def release_bike
    fail 'Error. No bikes available' if @bikes.empty?
    @bikes.pop
  end

  end