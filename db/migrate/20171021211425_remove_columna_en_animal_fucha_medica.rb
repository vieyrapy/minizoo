class RemoveColumnaEnAnimalFuchaMedica < ActiveRecord::Migration[5.1]
  def change
  	#remove_column :animales, :especie, :string
  	remove_column :ficha_medicas, :estado_salud, :string
  end
end
