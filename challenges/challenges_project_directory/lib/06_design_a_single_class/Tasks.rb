class Tasks

  def initialize
    @tasklist = []
  end

  def add_task(task)
    fail "Empty string cannot be added" if task == ""
    fail "Task must be a string in order to be added" unless task.is_a? String
    @tasklist << task
  end

  def display_tasks
    fail "No tasks to display" if @tasklist.empty?
    @tasklist.join(", ")
  end

  def complete(task)
    fail "Task not found in list" unless @tasklist.include? task
    @tasklist.delete(task)
  end

end
