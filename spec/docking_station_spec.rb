require "DockingStation_class"
require "Bike"

describe DockingStation do 
  it "Object responds to release_bike" do
  	expect(DockingStation.new).to respond_to(:release_bike)
  end
  it "has a default capacity of 20" do 
  	docking_station = DockingStation.new
  	expect(docking_station.capacity).to eq DockingStation::DEFAULT_CAPACITY 
  end
  describe "initialization" do
   # added below
   	subject {DockingStation.new}
   	let(:bike) {Bike.new}
  	it "has a variable capcity" do
  		described_class::DEFAULT_CAPACITY.times do
  		 subject.dock_bike(bike)
  		end
  		# docking_station = DockingStation.new(50)
  		# 50.times {docking_station.dock_bike Bike.new }
		expect {subject.dock_bike Bike.new }.to raise_error 'docking station full'
  	end
  end

  describe "#release_bike" do 
    it "Gets a bike" do
  	    bike = [Bike.new]
  	    subject.dock_bike(bike)
        expect(subject.release_bike).to eq bike
    end
    it "raises an error when there are no bikes available." do
        subject = DockingStation.new
        expect {subject.release_bike}.to raise_error
    end
  end
    it "Bike is docked" do
  	    expect(DockingStation.new).to respond_to(:dock_bike)
    end
  describe "#dock_bike" do
  	it "raises an error when capacity is full." do
  		# subject = DockingStation.new
  		# DockingStation::DEFAULT_CAPACITY.times do
  		# subject.dock_bike Bike.new	
  		# end
  		subject = DockingStation.new
  		bike = Bike.new
  		subject.capacity.times { subject.dock_bike(bike) }
  		#20.times { subject.dock_bike Bike.new }
  		expect {subject.dock_bike Bike.new }.to raise_error 'docking station full'
  	end
  	# it "docks something" do
  	#     subject = DockingStation.new
  	#     bike = Bike.new
    #     expect(subject.dock_bike(bike)).to eq bike
    # end
  end
  it "Bike that has been docked" do
  	expect(subject).to respond_to(:dock_bike).with(1).argument
  end
  # it "Docking Station has bikes" do
  # 	expect(subject).to respond_to(:bike)
  # end
end

