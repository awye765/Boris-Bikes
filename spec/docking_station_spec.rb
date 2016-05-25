require 'docking_station'

describe DockingStation do

  it 'responds to release_bike' do
    expect(subject).to respond_to(:release_bike)
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it 'responds to dock' do
    expect(subject).to respond_to(:dock).with(1).argument
  end

  it 'shows bikes' do
    subject.dock(1)
    expect(subject.bikes).to be_an_instance_of(Fixnum)

  end

end
