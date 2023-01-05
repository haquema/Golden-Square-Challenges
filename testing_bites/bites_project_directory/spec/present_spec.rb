require 'present'

describe Present do
  it "successfully wraps and unwraps a present" do
    present = Present.new
    present.wrap("toy")
    expect(present.unwrap).to eq "toy"
  end

  it "returns error message if you call unwrap before wrap" do
    present = Present.new
    expect { present.unwrap }.to raise_error "No contents have been wrapped."
  end

  it "returns error message if wrap consecutively" do
    present = Present.new
    present.wrap("toy")
    expect { present.wrap("car") }.to raise_error "A contents has already been wrapped."
  end
end