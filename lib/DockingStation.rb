require_relative 'bike'

class DockingStation

  attr_reader :bike

  def dock_bike(bike)
  	fail 'Error: Docking Station Full' if @bike
	  @bike = bike
  end

  def release_bike
    fail 'Error. No bikes available' unless @bike
    @bike
  end

  end