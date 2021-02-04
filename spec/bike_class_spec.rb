require "Bike"

describe Bike do
  it "Is bike working?" do
    expect(subject).to respond_to(:working?)
  end
end

 # it "is working" do
	# expect(subject.release_bike.working?).to eq true
 #  end

