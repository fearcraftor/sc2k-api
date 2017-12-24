class CreateBuildings < ActiveRecord::Migration[5.1]
  def change
    create_table :buildings do |t|
      t.integer :num
      t.integer :x_index
      t.integer :y_index
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
