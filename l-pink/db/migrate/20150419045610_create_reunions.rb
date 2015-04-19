class CreateReunions < ActiveRecord::Migration
  def change
    create_table :reunions do |t|
      t.date :fecha
      t.time :horainicio
      t.time :horafin
      t.string :lugar

      t.timestamps null: false
    end
  end
end
