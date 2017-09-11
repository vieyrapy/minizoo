class CreateArticulos < ActiveRecord::Migration[5.1]
  def change
    create_table :articulos do |t|
      t.string :titulo
      t.string :descripcion
      t.string :foto

      t.timestamps
    end
  end
end
