require "calculate_reading_time"

RSpec.describe "calculate_reading_time method" do
  context "given an empty string" do
    it "returns 0" do
      result = calculate_reading_time("")
      expect(result).to eq 0
    end
  end

  context "given a string with two word" do
    it "returns 1" do
      result = calculate_reading_time("one two")
      expect(result).to eq 1
    end
  end

  context "given a string with two hundred words" do
    it "returns 1" do
      result = calculate_reading_time("one " * 200)
      expect(result).to eq 1
    end
  end

  context "given a string with three hundred words" do
    it "returns 2" do
      result = calculate_reading_time("one " * 300)
      expect(result).to eq 2
    end
  end

  context "given a string with four hundred words" do
    it "returns 2" do
      result = calculate_reading_time("one " * 400)
      expect(result).to eq 2
    end
  end

  context "given a string with five thousand words" do
    it "returns 25" do
      result = calculate_reading_time("one " * 5000)
      expect(result).to eq 25
    end
  end
end