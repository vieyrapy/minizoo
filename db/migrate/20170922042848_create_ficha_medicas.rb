class CreateFichaMedicas < ActiveRecord::Migration[5.1]
  def change
    create_table :ficha_medicas do |t|
      t.datetime :fecha_ingreso
      t.string :estado_salud
      t.string :enfermedad
      t.string :dolencia
      t.string :descripcion
      t.string :archivos
      t.boolean :internacion

      t.timestamps
    end
  end
end
