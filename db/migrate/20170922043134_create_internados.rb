class CreateInternados < ActiveRecord::Migration[5.1]
  def change
    create_table :internados do |t|
      t.string :medicamento
      t.string :dosis
      t.datetime :fecha_inicio
      t.datetime :fecha_fin
      t.string :descripcion
      t.boolean :dar_alta

      t.timestamps
    end
  end
end
