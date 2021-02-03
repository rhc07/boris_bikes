require "DockingStation_class.rb"

describe DockingStation do 
  it "Object responds to relase_bike" do
  	expect(DockingStation.new).to respond_to(:release_bike)
  end
  it "Gets a bike" do
    expect(DockingStation.new.release_bike).to be_a(Bike)
  end
  it "is working" do
	expect(DockingStation.new.release_bike.working?).to eq(true)
  end
end

describe Bike do
  it "Is bike.working?" do
    expect(Bike.new).to respond_to(:working?)
  end
end


