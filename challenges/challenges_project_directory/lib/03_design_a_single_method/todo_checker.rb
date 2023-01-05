def todo_checker(str)
  fail "No string provided." if str.empty?
  words = str.split(" ")
  return words.include? "#TODO"
end