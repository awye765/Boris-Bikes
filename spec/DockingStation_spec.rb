#describe docking station

require 'DockingStation'

describe DockingStation do

  it "responds to release_bike" do
    expect(subject).to respond_to :release_bike
end

  it "releases the working bike" do
  	bike = Bike.new
  	subject.dock_bike(bike)
	bike = subject.release_bike
	expect(bike).to be_working
end

  it "docks the bike" do
    expect(subject).to respond_to :dock_bike
end

describe '#release_bike' do
	it 'releases bike' do
	bike = Bike.new
	subject.dock_bike(bike)
	expect(subject.release_bike).to eq bike
end
	it 'raises error if no bikes available' do
		expect {subject.release_bike}.to raise_error 'Error. No bikes available'
	end
end
end