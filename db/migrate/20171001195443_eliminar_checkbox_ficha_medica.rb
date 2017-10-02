class EliminarCheckboxFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	remove_column :animales, :macho, :boolean
  	add_column :animales, :sexo, :string
  end
end
