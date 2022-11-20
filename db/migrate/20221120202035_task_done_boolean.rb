class TaskDoneBoolean < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :done, :boolean, default: false, null: false
    add_index :tasks, :done
  end
end
