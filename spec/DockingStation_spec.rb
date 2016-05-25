#describe docking station

require 'DockingStation'


describe DockingStation do
	#it {is_expected.to respond_to :release_bike}

	it 'responds to release_bike' do
		expect(subject).to respond_to :release_bike
	end

	it "releases the working bike" do
		bike = subject.release_bike
		expect(bike).to be_working
	
	end

	#it {is expected_to respond_to(:dock).with(1).argument}
	it 'docks a bike' do
		#expect(subject).to respond_to(:dock).with(1).argument
		expect(subject.dock(bike)).to eq bike
	end

	it 'responds to bike' do 
		expect(subject).to respond_to :bike
	end
	  

	
end