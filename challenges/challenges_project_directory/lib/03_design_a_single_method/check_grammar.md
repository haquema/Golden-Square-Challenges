# {{PROBLEM}} Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

## 2. Design the Method Signature

one method to check for capital letter at the beginning
one method to check for sentence ending punctuation

one method that outputs the result for both

verify_capital_letter(text)
verify_end_punctuation(text)

result = grammar_checker(text)

# * text is the string to be checked for punctuation
# * verify_capital and verify_end_punctuation are methods to check the relative grammatical rule.
# * grammar_checker will combine both methods above and return result which is a boolean


## 3. Create Examples as Tests

# 1
grammar_checker("")
# => true

# 2
grammar_checker("Hello, My name is Aziz.")
# => true

# 3
grammar_checker("hello, My name is Aziz.")
# => "first letter needs to be capitalised"

# 4
grammar_checker("Hello, My name is Aziz")
# => "sentence ending punctuation needs to be added"

# 5
grammar_checker("hello, My name is Aziz")
# => "first letter need to be capitalised and sentence ending punctuation needs to be added"

# 6
grammar_checker("Hello, How are you?")
# => "Everything ok"

# 7
grammar_checker("Thank you, I'm great!")
# => "Everything ok"

## 4. Implement the Behaviour