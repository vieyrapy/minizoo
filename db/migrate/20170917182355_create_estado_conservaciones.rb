class CreateEstadoConservaciones < ActiveRecord::Migration[5.1]
  def change
    create_table :estado_conservaciones do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
