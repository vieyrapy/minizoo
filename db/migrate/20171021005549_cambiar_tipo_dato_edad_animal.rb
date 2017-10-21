class CambiarTipoDatoEdadAnimal < ActiveRecord::Migration[5.1]
  def change
  	change_column :animales, :edad, :datetime
  end
end
