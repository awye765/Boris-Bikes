require "van"

describe Van do
  it "responds to collect method" do
    expect(subject).to respond_to :collect
  end

  # it "collects something from station" do
  #   station = DockingStation.new
  #   bike = Bike.new
  #   station.dock_bike(bike)
  #   expect(subject.collect(station)).to_not be_nil
  # end
  # Not relevant (?) once we have broken and unbroken bikes complexity

  it "raises error if no bikes exists in station" do
    station = DockingStation.new
    expect{subject.collect(station)}.to raise_error "Error. No bikes to collect"
  end

  it "raises error if no broken bike exists in station" do
    station = DockingStation.new
    bike = Bike.new
    station.dock_bike(bike)
    expect{subject.collect(station)}.to raise_error "Error. No broken bikes to collect"
  end

  it "collects a broken bike from station" do
    station = DockingStation.new
    bike = Bike.new
    bike.report_broken
    station.dock_bike(bike)
    expect(subject.collect(station).last.broken?).to eq
  end

end

