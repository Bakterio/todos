class RenameDeadline < ActiveRecord::Migration[7.0]
  def change
    rename_column :tasks, :deathline, :deadline
  end
end
