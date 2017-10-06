class AgregarCampoMedicamentoEnTarea < ActiveRecord::Migration[5.1]
  def change
  	 add_column :tareas, :medicamento, :string
  end
end
