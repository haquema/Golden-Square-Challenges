class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
    @counter = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
    @contents.split.count
  end

  def reading_time(wpm)
    fail "reading speed cannot be 0" unless wpm.positive?
    (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes)
    num_words = wpm * minutes
    words = @contents.split
    chunks = words.each_slice(num_words).to_a
    chunk_ind = @counter % chunks.length
    @counter += 1
    chunks[chunk_ind].join(" ")
  end
end