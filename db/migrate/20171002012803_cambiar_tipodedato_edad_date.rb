class CambiarTipodedatoEdadDate < ActiveRecord::Migration[5.1]
  def change
  	remove_column :animales, :edad, :int
  	add_column :animales, :edad, :datetime
  end
end
