class CreateTerrains < ActiveRecord::Migration[5.1]
  def change
    create_table :terrains do |t|
      t.jsonb :terrain_data
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
