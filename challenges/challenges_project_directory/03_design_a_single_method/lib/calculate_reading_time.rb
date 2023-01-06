def calculate_reading_time(text)
  word_count = text.split(" ").length
  if word_count != 0 
    return time_to_read = (word_count.to_f/ 200).ceil
  else
    return 0
  end
end

