require 'diary'

RSpec.describe Diary do
  context "when initialised" do
    it "returns an empty array" do
      my_diary = Diary.new
      expect(my_diary.all).to eq []
    end

    it "has a word count of zero" do
      my_diary = Diary.new
      expect(my_diary.count_words).to eq 0
    end
  end

  context "when reading_time method" do
    it "returns a value of zero" do
      my_diary = Diary.new
      expect(my_diary.reading_time(2)).to eq 0
    end
  end

  context "when find_best_entry_for_reading_time is called" do
    it "returns a value of nil" do
      my_diary = Diary.new
      expect(my_diary.find_best_entry_for_reading_time(2, 3)).to eq nil
    end
  end
end