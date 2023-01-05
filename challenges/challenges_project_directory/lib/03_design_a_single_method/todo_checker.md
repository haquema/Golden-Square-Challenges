# {{PROBLEM}} Method Design Recipe

## 1. Describe the problem

> As a user
> So that I can keep track of my tasks
> I want to check if a text includes the string #TODO.

## 2. Design the Method Signature

task = todo_checker(str)


# * str is the string to be checked for tasks by searching for #TODO
# * task is a boolean e.g. true or false depending on whether the string was a task or not

## 3. Create Examples as Tests

# 1
todo_checker("")
# => fail "No string provided"

# 2
todo_checker("My name is Aziz)
# => false

# 3
todo_checker("#TODO do my laundry")
# => true

# 4
todo_checker("TODO wash my car")
# => false

# 5
todo_checker("I don't know any other todos")
# => false

# 6
todo_checker("write up a list of tasks #TODO")
# => true

# 7
todo_checker("think of tasks #TODO and write them up")
# => true

# 8
todo_checker("think of tasks #todo and write them up")
# => false

# 9
todo_checker("think of tasks #TODO and write them up #TODO")
# => true

# 10
todo_checker("think up a bunch of #TODOand write them up")
# => true

# 11
todo_checker("think up a bunch of #ToDo and write them up")
# => false



## 4. Implement the Behaviour