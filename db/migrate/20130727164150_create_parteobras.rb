class CreateParteobras < ActiveRecord::Migration
  def change
    create_table :parteobras do |t|
      t.string :frente
      t.string :jefefrente
      t.string :maestrodeobra
      t.string :casa
      t.string :subcontratista
      t.date :fechaingreso
      t.string :numeroparte
      t.integer :subsectore_id

      t.timestamps
    end
  end
end
