require "DockingStation_class.rb"

describe DockingStation do 
  describe ".release_bike" do
  	#it { "DockingStation responds_to .release_bike" } 
  	#expect("DockingStation").to respond_to(:release_bike)
  	it { is_expected.to respond_to(:release_bike)}
  end
end
