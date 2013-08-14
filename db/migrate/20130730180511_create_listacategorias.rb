class CreateListacategorias < ActiveRecord::Migration
  def change
    create_table :listacategorias do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
