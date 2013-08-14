class CreatePartidas < ActiveRecord::Migration
  def change
    create_table :partidas do |t|
      t.string :nombre
      t.string :diametro
      t.string :serieclase
      t.string :profundidad
      t.string :unidad
      t.string :metrado
      t.string :observacion
      t.integer :parteobra_id
      t.string :terreno

      t.timestamps
    end
  end
end
