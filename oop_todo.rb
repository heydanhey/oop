require_relative "list"
require_relative "task"

# Create list
list = List.new

# Create tasks and add them to the list
list.add_task(Task.new("Feed the cat", 1))
list.add_task(Task.new("Take out trash", 2))
list.add_task(Task.new("Mow the lawn", 3))

# Print out the second task in the list
puts "Second task:"
puts list.tasks[1].name
puts "---------"

# Get an array containing the names of all incomplete tasks from the list
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"









# Mark the first task from the list as complete
list.tasks[0].complete!

# Print out the incomplete tasks again
puts "Incomplete Tasks:"
puts list.incomplete_tasks
puts "--------"

# Adding toggle funcunality to Task
# And adding number_of_incomplete_tasks to List
# Pursunat to Steps 5 and 6 of OOP assignment
puts "Number of incomplete tasks #{list.number_of_incomplete_tasks}."
puts "Toggle Task"
list.tasks[0].toggle_complete!
puts "Number of incomplete tasks #{list.number_of_incomplete_tasks}."
puts "Toggle Different Task"
list.tasks[1].toggle_complete!
puts "Number of incomplete tasks #{list.number_of_incomplete_tasks}."
puts "--------"

# Adding delete_complete_tasks to List
# Pursuant to Step 7 o OOP assignment
puts "Let's delete the completed tasks."
list.delete_complete_tasks
puts"Here is the current task list:"
list.tasks.each do |task|
    puts " #{task.name}, Priority: #{task.priority}"
end
puts "--------"

# Add a new Task
puts "Please enter a new task:"
new_task=gets.chomp
puts "Can you give this task a Priority of 1-10?:"
new_priority=gets.chomp.to_i
list.add_task(Task.new(new_task, new_priority))
puts "--------"

# Adding and sorting by Priority
# Pursuant to Step 8 of OOP Assignment
puts "Here is the current task list:"
list.tasks.each do |task|
    puts " #{task.name}, Priority: #{task.priority}, Completed? #{task.complete}"
end

puts "--------"

puts"Let's sort the list in order of priority"
list.sort_by_priority.each do |task|
    puts " #{task.name}, Priority: #{task.priority}, Completed? #{task.complete}"
end