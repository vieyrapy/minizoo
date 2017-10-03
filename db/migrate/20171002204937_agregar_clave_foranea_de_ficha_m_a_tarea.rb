class AgregarClaveForaneaDeFichaMATarea < ActiveRecord::Migration[5.1]
  def change
  	add_column :tareas, :ficha_medica_id, :integer
    add_foreign_key(:tareas, :ficha_medicas) 
  end
end
