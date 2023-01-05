require "check_grammar"

RSpec.describe "check_grammar method" do
  context "given an empty string" do
    it "fails" do
      expect { check_grammar("") }.to raise_error "You passed an empty string"
    end
  end

  context "given a string with correct capitalisation and fullstop at the end" do
    it "returns true" do
      result = check_grammar("Hello, My name is Aziz.")
      expect(result).to eq true
    end
  end

  context "given a string with incorrect capitalisation" do
    it "returns false" do
      result = check_grammar("hello, My name is Aziz.")
      expect(result).to eq false
    end
  end

  context "given a string with incorrect end punctuation" do
    it "returns false" do
      result = check_grammar("Hello, My name is Aziz")
      expect(result).to eq false
    end
  end

  context "given a string with incorrect capitalisation and end punctuation" do
    it "returns false" do
      result = check_grammar("hello, My name is Aziz")
      expect(result).to eq false
    end
  end

  context "given a string with correct capitalisation and exclamation mark at the end" do
    it "returns true" do
      result = check_grammar("Hello, My name is Aziz!")
      expect(result).to eq true
    end
  end

  context "given a string with correct capitalisation and question mark at the end" do
    it "returns true" do
      result = check_grammar("Hello, My name is Aziz?")
      expect(result).to eq true
    end
  end

  context "given a string with correct capitalisation and comma at the end" do
    it "returns false" do
      result = check_grammar("Hello, My name is Aziz,")
      expect(result).to eq false
    end
  end
end