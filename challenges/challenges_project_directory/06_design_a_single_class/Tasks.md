# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface
_Include the initializer and public methods with all parameters and return values._

```ruby
# EXAMPLE

class Tasks
  def initialize
   # No return value
  end

  def add_task(task) # task is a string containing a task
   # No return value
  end

  def display_tasks
  # returns a string with each task (separated with commas)
  end

  def complete(completed_task) # completed_task is a string containing the task that has been completed
  end
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo = Tasks.new
todo.add_task("tidy bed")
todo.display_tasks # => "tidy bed"


# 2
todo = Tasks.new
todo.add_task("tidy bed")
todo.add_task("fold laundry")
todo.display_tasks # =>"tidy bed, fold laundry"

# 3
todo = Tasks.new
todo.add_task("") # => fail "Empty string cannot be added"

# 4
todo = Tasks.new
todo.add_task(2) # => fail "Task must be a string in order to be added"

# 5
todo = Tasks.new
todo.display_tasks # => fail "No tasks to display"

# 6
todo = Tasks.new
todo.add_task("tidy bed")
todo.add_task("fold laundry")
todo.complete("tidy bed")
todo.display_tasks # => "fold laundry"

# 7
todo = Tasks.new
todo.complete("tidy bed") # => fail "Task not found in list"



```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._
