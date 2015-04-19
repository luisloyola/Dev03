class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.string :nombre

      t.timestamps null: false
    end
  end
end
