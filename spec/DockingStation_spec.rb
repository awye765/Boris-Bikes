#describe docking station

require 'DockingStation'

describe DockingStation do

    it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
    end

    it "releases the working bike" do
  	  bikes = Bike.new
  	  subject.dock_bike(bikes)
	  bikes = subject.release_bike
	  expect(bikes).to be_working
    end

    it "docks the bike" do
      expect(subject).to respond_to :dock_bike
    end

  describe '#release_bike' do
      it 'releases bike' do
	    bikes = Bike.new
	    subject.dock_bike(bikes)
	    expect(subject.release_bike).to eq bikes
      end
	  it 'raises error if no bikes available' do
		expect {subject.release_bike}.to raise_error 'Error. No bikes available'
	  end
	
  describe '#dock_bike' do 
	  it 'raises error when station is full' do
    DockingStation::DEFAULT_CAPACITY.times do subject.dock_bike Bike.new 
    end
		expect {subject.dock_bike(Bike.new)}.to raise_error 'Error: Docking Station Full'
	end
  end
 end
end