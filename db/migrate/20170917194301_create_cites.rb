class CreateCites < ActiveRecord::Migration[5.1]
  def change
    create_table :cites do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
