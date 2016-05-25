require 'docking_station'

describe DockingStation do
  subject(:station) { described_class.new }

  it 'responds to release_bike' do
    expect(station).to respond_to(:release_bike)
  end

  it 'releases working bikes' do
    station.dock(1)
    bike = station.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock' do
    expect(station).to respond_to(:dock).with(1).argument
  end

  it 'shows bikes' do
    station.dock(1)
    expect(station.bikes).to be_an_instance_of(Fixnum)
  end

  it 'exception when bike released with none docked' do
    station.dock(1)
    station.release_bike
    expect{station.release_bike}.to raise_error 'No bikes in station!'
  end

  it 'exception when dock full' do
    expect{station.dock(2)}.to raise_error "Dock full!"
  end

end
