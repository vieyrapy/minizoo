class AgregarClaveForaneaYColumnasAAnimal < ActiveRecord::Migration[5.1]
  def change
  	add_column :animales, :alimento_id, :integer
    add_foreign_key(:animales, :alimentos) 

    add_column :animales, :cite_id, :integer
    add_foreign_key(:animales, :cites) 

    #add_column :animales, :especie_id, :integer
    #add_foreign_key(:animales, :especies) 

    add_column :animales, :estado_conservacion_id, :integer
    add_foreign_key(:animales, :estado_conservaciones) 
  end
end
