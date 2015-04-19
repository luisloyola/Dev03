class AddReunionIdToUserreunions < ActiveRecord::Migration
  def change
    add_reference :userreunions, :reunion, index: true, foreign_key: true
  end
end
