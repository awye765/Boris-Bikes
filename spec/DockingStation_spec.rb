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

    it "won't release a broken bike",:focus=>true do
      bike = Bike.new
      bike.report_broken
      subject.dock_bike bike
      expect(subject.release_bike).to eq 'Error. No working bikes available'
    end

    it "docks the bike" do
      expect(subject).to respond_to :dock_bike
    end

    it 'has a default capacity' do
      expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
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
      subject.capacity.times { subject.dock_bike Bike.new }
      expect {subject.dock_bike(Bike.new)}.to raise_error 'Error: Docking Station Full'
  end
  end


  describe 'initialization' do
  it 'has a variable capacity' do
    docking_station = DockingStation.new(50)
    50.times { docking_station.dock_bike Bike.new }
    expect{ docking_station.dock_bike Bike.new }.to raise_error 'Error: Docking Station Full'
  end
  end


describe 'initialization' do
  subject { DockingStation.new }
  let(:bikes) { Bike.new }
  it 'defaults capacity' do
    described_class::DEFAULT_CAPACITY.times do
      subject.dock_bike(bikes)
    end
    expect{ subject.dock_bike(bikes) }.to raise_error 'Error: Docking Station Full'
  end
end

 end
end