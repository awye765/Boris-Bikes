require './lib/bike.rb'
require './lib/docking_station.rb'



p bike.working?

describe "bikes and docks" do
  before do
    station = DockingStation.new
    bike = Bike.new
  end

end
