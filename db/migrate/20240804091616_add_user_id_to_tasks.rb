class AddUserIdToTasks < ActiveRecord::Migration[7.1]
  def up
    execute 'DELETE FROM tasks;'
    add_reference :tasks, :user, null: false, index: true
  end
end

def down
  remove_reference :tasks, :user, index: true
end
