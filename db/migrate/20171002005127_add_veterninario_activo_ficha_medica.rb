class AddVeterninarioActivoFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :veterinario, :string
  	add_column :ficha_medicas, :activo, :boolean
  end
end
