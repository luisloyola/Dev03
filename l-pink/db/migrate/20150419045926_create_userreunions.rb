class CreateUserreunions < ActiveRecord::Migration
  def change
    create_table :userreunions do |t|
      t.integer :secreatrio
      t.string :presente

      t.timestamps null: false
    end
  end
end
