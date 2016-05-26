require './lib/bike.rb'
require './lib/docking_station.rb'

station = DockingStation.new
bike = Bike.new

p station.capacity
p station.capacity = 10


