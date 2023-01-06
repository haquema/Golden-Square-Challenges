def make_snippet(str)
  words = str.split(" ")
  if words.length > 5
    return words[0..4].join(" ") + "..."
  else
    return str
  end
end
