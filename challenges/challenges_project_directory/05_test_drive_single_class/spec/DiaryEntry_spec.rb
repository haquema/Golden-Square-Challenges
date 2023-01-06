require "DiaryEntry"

RSpec.describe DiaryEntry do
  it "constructs" do
    entry = DiaryEntry.new("Monday", "It rained")
    expect(entry.title).to eq "Monday"
    expect(entry.contents).to eq "It rained"
  end
  
  describe "#count_words method" do
    it "correctly counts number of words in contents" do
      entry = DiaryEntry.new("Monday", "It rained")
      expect(entry.count_words).to eq 2
    end

    it "returns a 0 when empty string is passed as contents" do
      entry = DiaryEntry.new("Monday", "")
      expect(entry.count_words).to eq 0
    end
  end

  describe "#reading_time method" do
    context "given a positive, non zero wpm" do
      it "returns the correct reading time as an integer" do
        entry = DiaryEntry.new("Monday", "word " * 400)
        expect(entry.reading_time(200)).to eq 2
      end
    end
    
    context "given a zero value wpm" do
      it "fails" do
        entry = DiaryEntry.new("Monday", "Once upon a time...")
        expect { entry.reading_time(0) }.to raise_error "reading speed cannot be 0"
      end
    end
  end

  describe "#reading_chunk method" do
    context "given a reading rate and set number of minutes, where the text is longer than the user can read" do
      it "returns the chunk of contents the user can read" do
        entry = DiaryEntry.new("Monday", "one two three")
        result = entry.reading_chunk(2, 1)
        expect(result).to eq "one two"
      end
      it "returns the next chunk of text if text is still longer than the user can read" do
        entry = DiaryEntry.new("Monday", "one two three four five")
        entry.reading_chunk(2, 1)
        result = entry.reading_chunk(2, 1)
        expect(result).to eq "three four"
      end
      it "returns the next chunk of text if text is still longer than the user can read" do
        entry = DiaryEntry.new("Monday", "one two three four five")
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        result = entry.reading_chunk(2, 1)
        expect(result).to eq "five"
      end
      it "returns the next chunk of text if text is still longer than the user can read" do
        entry = DiaryEntry.new("Monday", "one two three four five")
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        result = entry.reading_chunk(2, 1)
        expect(result).to eq "one two"
      end
      it "returns the next chunk of text if text is still longer than the user can read" do
        entry = DiaryEntry.new("Monday", "one two three four five")
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        entry.reading_chunk(2, 1)
        result = entry.reading_chunk(2, 1)
        expect(result).to eq "three four"
      end
    end
  end
end