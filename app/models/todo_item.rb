class TodoItem < ActiveRecord::Base
  belongs_to :todo_list
  belongs_to :user
  def self.completed_counter
    TodoItem.where(completed: true).count
  end
end