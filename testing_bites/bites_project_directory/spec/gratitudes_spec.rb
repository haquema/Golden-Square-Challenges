require 'gratitudes'

describe Gratitudes do

  it "returns an accurate string when no strings are pushed" do
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end

  it "returns an accurate string when one string is pushed" do
    gratitudes = Gratitudes.new
    gratitudes.add("Family")
    expect(gratitudes.format).to eq "Be grateful for: Family"
  end

  it "returns an accurate string when multiple strings are pushed" do
    gratitudes = Gratitudes.new
    gratitudes.add("Family")
    gratitudes.add("Friends")
    gratitudes.add("Food")
    expect(gratitudes.format).to eq "Be grateful for: Family, Friends, Food"
  end

end
