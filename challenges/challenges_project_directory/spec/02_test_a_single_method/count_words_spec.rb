require "count_words"

RSpec.describe "count_words method" do
  it "returns 0 when given an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

  it "returns 0 when given an string full of empty space" do
    result = count_words("    ")
    expect(result).to eq 0
  end

  it "returns 5 when given a string of five words" do
    result = count_words("one two three four five")
    expect(result).to eq 5
  end

  it "returns 10 when given a string of ten words" do
    result = count_words("one two three four five one two three four five")
    expect(result).to eq 10
  end
end
