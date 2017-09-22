class AgregarClaveForaneaAFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :animal_id, :integer
    add_foreign_key(:ficha_medicas, :animales) 
	# Agregamos columna en internados en la relacion ficha_medica con internados
    add_column :internados, :ficha_medica_id, :integer
    add_foreign_key(:internados, :ficha_medicas) 
  end
end
