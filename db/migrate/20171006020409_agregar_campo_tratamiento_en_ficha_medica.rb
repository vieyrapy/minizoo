class AgregarCampoTratamientoEnFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :tratamiento, :boolean
  end
end
