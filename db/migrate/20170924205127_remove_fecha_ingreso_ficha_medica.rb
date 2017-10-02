class RemoveFechaIngresoFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	remove_column :ficha_medicas, :fecha_ingreso, :datetime
  end
end
