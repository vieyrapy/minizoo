class CreateTareas < ActiveRecord::Migration[5.1]
  def change
    create_table :tareas do |t|
      t.datetime :fecha
      t.boolean :terminado

      t.timestamps
    end
  end
end
