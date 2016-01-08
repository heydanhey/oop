class List
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def incomplete_tasks #returns the NAMES of incomplete tasks
    incomplete_task_names = []
    @tasks.each do |task|
      unless task.complete
        incomplete_task_names << task.name
      end
    end
    incomplete_task_names
  end

  def number_of_incomplete_tasks
    return incomplete_tasks.length
  end

  def delete_complete_tasks #returns the NAMES of incomplete tasks
    tasks.delete_if do |task|
      task.complete
    end
  end

  def sort_by_priority
    sorted_array = tasks.sort_by do |task|
      task.priority
    end
    return sorted_array.reverse
  end

end