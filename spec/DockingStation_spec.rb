#describe docking station

require 'DockingStation'

describe DockingStation do

    let(:bike_broken) { double :bike_broken, :broken? => true }
    let(:bike_working) { double :bike_working, :broken? => false }

    it "responds to release_bike" do
      expect(subject).to respond_to :release_bike
    end

    it "releases the working bike" do
      subject.dock_bike(bike_working)
      bikes = subject.release_bike
      expect(bikes.broken?).to be false
    end

    it "won't release a broken bike" do
      subject.dock_bike(bike_broken)
      expect {subject.release_bike}.to raise_error 'Error. No working bikes available'
    end

    it 'release working bike provided at least one is available in dock' do
      bike1 = double(:bike1, :broken? => false, :class => Bike)
      subject.dock_bike bike1
      bike2 = double(:bike2, :broken? => true, :class => Bike)
      subject.dock_bike bike2
      expect(subject.release_bike.class).to eq Bike
    end

    it "docks the bike" do
      expect(subject).to respond_to :dock_bike
    end

    it "docks a broken bike" do
      subject.dock_bike(bike_broken)
      expect(subject.bikes.last).to eq bike_broken
    end

    it "docks a working bike" do
      subject.dock_bike(bike_working)
      expect(subject.bikes.last).to eq bike_working
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

  describe '#release_bike' do
    it 'releases bike' do
        subject.dock_bike(bike_working)
        expect(subject.release_bike).to eq bike_working
    end

    it 'raises error if no bikes available' do
      expect {subject.release_bike}.to raise_error 'Error. No bikes available'
    end
  end

  describe '#dock_bike' do

    it 'raises error when station is full' do
      subject.capacity.times { subject.dock_bike bike_working }
      expect {subject.dock_bike(bike_working)}.to raise_error 'Error: Docking Station Full'
    end
  end

  describe 'initialization' do
    it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock_bike bike_working }
    expect{ docking_station.dock_bike bike_working }.to raise_error 'Error: Docking Station Full'
    end
  end

    it 'defaults capacity' do
      DockingStation::DEFAULT_CAPACITY.times do
        subject.dock_bike(bike_working)
    end

    expect{ subject.dock_bike(bike_working) }.to raise_error 'Error: Docking Station Full'
    end
  end





