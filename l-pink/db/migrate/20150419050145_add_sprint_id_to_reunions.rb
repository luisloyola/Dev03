class AddSprintIdToReunions < ActiveRecord::Migration
  def change
    add_reference :reunions, :sprint, index: true, foreign_key: true
  end
end
