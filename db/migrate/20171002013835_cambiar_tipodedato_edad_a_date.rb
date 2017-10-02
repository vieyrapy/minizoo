class CambiarTipodedatoEdadADate < ActiveRecord::Migration[5.1]
  def change
  	change_column :animales, :edad, :date
  end
end
