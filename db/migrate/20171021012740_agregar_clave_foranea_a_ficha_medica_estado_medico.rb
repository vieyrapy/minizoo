class AgregarClaveForaneaAFichaMedicaEstadoMedico < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :estado_medico_id, :integer
    add_foreign_key(:ficha_medicas, :estado_medicos) 
  end
end
