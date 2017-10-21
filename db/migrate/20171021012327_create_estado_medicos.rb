class CreateEstadoMedicos < ActiveRecord::Migration[5.1]
  def change
    create_table :estado_medicos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
