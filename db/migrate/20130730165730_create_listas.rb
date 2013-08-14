class CreateListas < ActiveRecord::Migration
  def change
    create_table :listas do |t|
      t.string :nombre
      t.integer :listacategoria_id

      t.timestamps
    end
  end
end
