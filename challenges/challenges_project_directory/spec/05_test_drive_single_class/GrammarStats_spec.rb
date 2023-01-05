require "GrammarStats"

RSpec.describe GrammarStats do
  describe "#check method" do
    context "given a string with correct capitalisation and fullstop at the end" do
      it "returns true" do
        stats = GrammarStats.new
        result = stats.check("Hello, My name is Aziz.")
        expect(result).to eq true
      end
    end

    context "given a string with incorrect capitalisation" do
      it "returns false" do
        stats = GrammarStats.new
        result = stats.check("hello, My name is Aziz.")
        expect(result).to eq false
      end
    end

    context "given a string with incorrect end punctuation" do
      it "returns false" do
        stats = GrammarStats.new
        result = stats.check("Hello, My name is Aziz")
        expect(result).to eq false
      end
    end

    context "given a string with incorrect capitalisation and end punctuation" do
      it "returns false" do
        stats = GrammarStats.new
        result = stats.check("hello, My name is Aziz")
        expect(result).to eq false
      end
    end

    context "given a string with correct capitalisation and exclamation mark at the end" do
      it "returns true" do
        stats = GrammarStats.new
        result = stats.check("Hello, My name is Aziz!")
        expect(result).to eq true
      end
    end

    context "given a string with correct capitalisation and question mark at the end" do
      it "returns true" do
        stats = GrammarStats.new
        result = stats.check("Hello, My name is Aziz?")
        expect(result).to eq true
      end
    end

    context "given a string with correct capitalisation and comma at the end" do
      it "returns false" do
        stats = GrammarStats.new
        result = stats.check("Hello, My name is Aziz,")
        expect(result).to eq false
      end
    end
      
    context "given an empty string" do
      it "fails" do
        stats = GrammarStats.new
        expect { stats.check("") }.to raise_error "You passed an empty string"
      end
    end
      
    context "given an integer as an argument to check method" do
      it "fails" do
        stats = GrammarStats.new
        expect { stats.check(2) }.to raise_error "The argument for check method must be a string!"
      end
    end
  end
  
  describe "#percentage_good method" do
    context "when method is called without having called check" do
      it "fails" do
        stats = GrammarStats.new
        expect { stats.percentage_good }.to raise_error "You need to run check at least once first"
      end
    end
    context "calling percentage_good after checking one piece of text" do
      it "returns 100 because the text was grammatically correct" do
        stats = GrammarStats.new
        stats.check("Hello, My name is Aziz?")
        expect(stats.percentage_good).to eq 100
      end
      it "returns 0 because the text was grammatically incorrect" do
        stats = GrammarStats.new
        stats.check("Hello, My name is Aziz")
        stats.check("Hello, My name is Aziz")
        stats.check("Hello, My name is Aziz")
        stats.check("Hello, My name is Aziz?")
        expect(stats.percentage_good).to eq 25
      end
    end
  end 
end