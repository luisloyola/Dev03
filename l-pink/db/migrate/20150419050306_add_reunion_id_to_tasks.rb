class AddReunionIdToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :reunion, index: true, foreign_key: true
  end
end
