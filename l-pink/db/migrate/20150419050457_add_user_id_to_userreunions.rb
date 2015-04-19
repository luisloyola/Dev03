class AddUserIdToUserreunions < ActiveRecord::Migration
  def change
    add_reference :userreunions, :user, index: true, foreign_key: true
  end
end
