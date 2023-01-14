require 'diary'
require 'diary_entry'

RSpec.describe "integration" do
  
  it "returns list of those entries in an array" do
    my_diary = Diary.new
    entry_1 = DiaryEntry.new("Monday", "I went to the park")
    entry_2 = DiaryEntry.new("Tuesday", "I had an apple pie")
    my_diary.add(entry_1)
    my_diary.add(entry_2)
    expect(my_diary.all).to eq [entry_1, entry_2]
  end
  

  describe "word counting behaviour" do
    it "returns the total number of words in all entries" do
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "I went to the park")
      entry_2 = DiaryEntry.new("Tuesday", "I had an apple pie")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      expect(my_diary.count_words).to eq 10
    end
  end

  describe "reading time behaviour" do
    it "fails if the wpm is zero or negative" do
      my_diary = Diary.new
      expect { my_diary.reading_time(0) }.to raise_error "wpm must be positive!"
      expect { my_diary.reading_time(-1) }.to raise_error "wpm must be positive!"
    end

    it "calculates the correct reading time when entries are exact minutes" do 
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "I went to the park today")
      entry_2 = DiaryEntry.new("Tuesday", "I had an apple pie today")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      expect(my_diary.reading_time(2)).to eq 6
    end

    it "calculates the correct reading time when entries are not exact minutes" do 
      my_diary = Diary.new
      entry_1 = DiaryEntry.new("Monday", "I went to the park")
      entry_2 = DiaryEntry.new("Tuesday", "I had an apple pie")
      my_diary.add(entry_1)
      my_diary.add(entry_2)
      expect(my_diary.reading_time(2)).to eq 5
    end
  end

  describe "behaviour for finding best entry to read given specific reading time" do
    context "we have a single entry and it is suitable" do
      it "returns that entry" do
        my_diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "I went to the park")
        my_diary.add(entry_1)
        result = my_diary.find_best_entry_for_reading_time(2, 3)
        expect(result).to eq entry_1
      end
    end

    context "we have a single entry and it is not suitable" do
      it "returns that nil" do
        my_diary = Diary.new
        entry_1 = DiaryEntry.new("Monday", "I went to the park")
        my_diary.add(entry_1)
        result = my_diary.find_best_entry_for_reading_time(2, 2)
        expect(result).to eq nil
      end
    end
    
    context "we have multiple suitable entries" do
      it "returns the entry with the longest reading time" do
        my_diary = Diary.new
        best_entry = DiaryEntry.new("two", "one two")  
        entry_1 = DiaryEntry.new("one", "one") 
        entry_2 = DiaryEntry.new("three", "one two three")
        my_diary.add(entry_1)
        my_diary.add(entry_2)
        my_diary.add(best_entry)
        result = my_diary.find_best_entry_for_reading_time(2, 1)
        expect(result).to eq best_entry
      end
    end
  end
end

