class AgregarFamiliaEnAnimal < ActiveRecord::Migration[5.1]
  def change
  		add_column :animales, :familia, :string
  end
end
