class AddColumnaAudioFichaMedica < ActiveRecord::Migration[5.1]
  def change
  	add_column :ficha_medicas, :audio, :string
  end
end
