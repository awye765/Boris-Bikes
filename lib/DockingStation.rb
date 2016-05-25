require_relative 'bike'

class DockingStation

  attr_reader :bike

def dock_bike(bike)
  	#docked? == true
  	fail 'Error: Docking Station Full' if @bike
	@bike = bike
end

def release_bike
  	#Bike.new if empty_bikes == false
  fail 'Error. No bikes available' unless @bike
  @bike
end



  #def empty_bikes
  #	return 'Error. No bikes available'
  #end

end