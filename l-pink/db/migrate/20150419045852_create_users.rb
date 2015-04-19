class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :rol
      t.string :nombre
      t.string :apellido

      t.timestamps null: false
    end
  end
end
