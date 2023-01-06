require 'make_snippet'

RSpec.describe "make_snippet method" do
  context "given an empty string" do
    it "returns an empty string" do
      result = make_snippet("")
      expect(result).to eq ""
    end
  end

  context "given a string of five words or fewer" do
    it "returns that string" do
      result = make_snippet("one two three four five")
      expect(result).to eq "one two three four five"
    end
  end

  context "given a string of more than five words" do
    it "returns the first five words followed by ..." do
      result = make_snippet("Nobody can go back and start a new beginning, but anyone can start today ")
      expect(result).to eq "Nobody can go back and..."
    end
  end
end