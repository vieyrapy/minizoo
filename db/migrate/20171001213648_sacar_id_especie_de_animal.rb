class SacarIdEspecieDeAnimal < ActiveRecord::Migration[5.1]
  def change
  	remove_column :animales, :especie_id, :int
 	add_column :animales, :especie, :string
  end
end
