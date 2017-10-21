class AgregarClaveForaneaDeEspecieAAnimal < ActiveRecord::Migration[5.1]
  def change
  	add_column :animales, :especie_id, :integer
    add_foreign_key(:animales, :especies) 
  end
end
