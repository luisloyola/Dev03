class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.text :tema
      t.string :tipo
      t.string :discusion
      t.string :accion
      t.string :owner
      t.date :fechatermino
      t.string :estado
      t.integer :baseline

      t.timestamps null: false
    end
  end
end
