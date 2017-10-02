class AgregarIdAmimal < ActiveRecord::Migration[5.1]
  def change
  	add_column :animales, :identificador, :string
  end
end
