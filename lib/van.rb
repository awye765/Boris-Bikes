require 'DockingStation'

class Van

	def initialize
		@broken_bikes = []
	end

	def collect(location)
		fail 'Error. No bikes to collect' if location.bikes.empty?

		@new_bike = location.bikes.find{|bike| bike.broken?}
    fail 'Error. No broken bikes to collect' if @new_bike == nil

    @broken_bikes << @new_bike


    # unless @new_bike
    #   fail 'Error. No working bikes available'
    # else
    #   location.bikes.delete(@new_bike)
    # end
  end

end
