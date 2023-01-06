require "todo_checker"

RSpec.describe "todo_checker method" do
  context "given an empty string" do
    it "fails" do
      expect { todo_checker("") }.to raise_error "No string provided."
    end
  end

  context "given a string without #TODO in it" do
    it "returns false" do
      result = todo_checker("My name is Aziz")
      expect(result).to eq false
    end
  end

  context "given a string with #TODO in it" do
    it "returns true" do
      result = todo_checker("#TODO do my laundry")
      expect(result).to eq true
    end
  end

  context "given a string with just TODO omitting the #" do
    it "returns false" do
      result = todo_checker("TODO wash my car")
      expect(result).to eq false
    end
  end

  context "given a string with todo in a sentence" do
    it "returns false" do
      result = todo_checker("I don't know any other todos")
      expect(result).to eq false
    end
  end

  context "given a string with #TODO at the end" do
    it "returns true" do
      result = todo_checker("write up a list of tasks #TODO")
      expect(result).to eq true
    end
  end

  context "given a string with #TODO in the middle" do
    it "returns true" do
      result = todo_checker("think of tasks #TODO and write them up")
      expect(result).to eq true
    end
  end

  context "given a string with #todo in the middle" do
    it "returns false" do
      result = todo_checker("think of tasks #todo and write them up")
      expect(result).to eq false
    end
  end

  context "given a string with #TODO multiple times" do
    it "returns true" do
      result = todo_checker("think of tasks #TODO and write them up #TODO")
      expect(result).to eq true
    end
  end

  context "given a string with #TODO joined to the next word" do
    it "returns false" do
      result = todo_checker("think up a bunch of #TODOand write them up")
      expect(result).to eq false
    end
  end

  context "given a string with #TODO in mixed case" do
    it "returns false" do
      result = todo_checker("think up a bunch of #ToDo and write them up")
      expect(result).to eq false
    end
  end

  
end