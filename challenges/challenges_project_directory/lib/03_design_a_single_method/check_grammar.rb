def verify_capitalisation(str)
  first_letter = str[0]
  return first_letter == first_letter.upcase
end

def verify_end_punctuatin(str)
  punctuation = ["!", ".", "?"]
  return punctuation.include? str[-1]
end

def check_grammar(str)
  fail "You passed an empty string" if str.empty?
  return verify_capitalisation(str) && verify_end_punctuatin(str)
end

 

