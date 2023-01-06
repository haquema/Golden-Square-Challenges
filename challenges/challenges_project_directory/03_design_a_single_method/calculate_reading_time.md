# {{PROBLEM}} Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can manage my time
> I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

## 2. Design the Method Signature

estimate = calculate_reading_time(text)
# * text is a string containing any number of words
# * estimate is an integer (rounded up) of the minutes it will take to read the text

## 3. Create Examples as Tests

# 1
calculate_reading_time("")
# => 0

# 2
calculate_reading_time("one")
# => 1

# 3
calculate_reading_time(TWO_HUNDRED_WORDS)
# => 1

# 4
calculate_reading_time(THREE_HUNDRED_WORDS)
# => 2

# 5
calculate_reading_time(FOUR_HUNDRED_WORDS)
# => 2

# 4
calculate_reading_time(FIVE_THOUSAND_WORDS)
# => 25

## 4. Implement the Behaviour



