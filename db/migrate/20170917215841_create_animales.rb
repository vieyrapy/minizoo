class CreateAnimales < ActiveRecord::Migration[5.1]
  def change
    create_table :animales do |t|
      t.string :nombre_cientifico
      t.string :nombre_comun
      t.boolean :macho
      t.integer :edad
      t.string :origen
      t.string :descripcion

      t.timestamps
    end
  end
end
