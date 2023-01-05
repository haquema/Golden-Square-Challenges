require "Tasks"

RSpec.describe Tasks do

  context "add a task and call the display method" do
    it "returns the added task as a string" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      expect(todo.display_tasks).to eq "tidy bed"
    end
  end


  context "adds two tasks and calls the display method" do
    it "returns the two tasks as a string (separated by a comma)" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      todo.add_task("fold laundry")
      expect(todo.display_tasks).to eq "tidy bed, fold laundry"
    end
  end

  context "attempts to add an empty string to list" do
    it "fails" do
      todo = Tasks.new
      expect { todo.add_task("") }.to raise_error "Empty string cannot be added"
    end
  end

  context "attempts to add a non string task" do
    it "fails" do
      todo = Tasks.new
      expect { todo.add_task(2) }.to raise_error "Task must be a string in order to be added"
    end
  end

  context "attempts to display tasks when no tasks in list" do
    it "fails" do
      todo = Tasks.new
      expect { todo.display_tasks }.to raise_error "No tasks to display"
    end
  end

  context "marks a task as completed" do
    it "removes the task from the list" do
      todo = Tasks.new
      todo.add_task("tidy bed")
      todo.add_task("fold laundry")
      todo.complete("tidy bed")
      expect(todo.display_tasks).to eq "fold laundry"
    end
  end

  context "attempts to mark a task that is not in the list as complete" do
    it "fails" do
      todo = Tasks.new
      expect { todo.complete("tidy bed") }.to raise_error "Task not found in list"
    end
  end
end
