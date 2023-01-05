require 'counter'

describe Counter do

  it "returns a count of zero when initialized" do
    counter = Counter.new
    expect(counter.report).to eq "Counted to 0 so far."
  end

  it "returns the correct count when given one number" do
    counter = Counter.new
    counter.add(34)
    expect(counter.report).to eq "Counted to 34 so far."
  end

  it "returns the correct count when given multiple numbers" do
    counter = Counter.new
    counter.add(4)
    counter.add(6)
    counter.add(5)
    expect(counter.report).to eq "Counted to 15 so far."
  end

end
