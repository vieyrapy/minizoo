class AgregarAltaCuarentenaFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :alta_cuarentena, :boolean
  end
end
