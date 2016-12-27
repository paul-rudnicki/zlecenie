class CreateGeolocations < ActiveRecord::Migration
  def change
    create_table :geolocations do |t|
      t.string :name
      t.string :slug

      t.timestamps null: false
    end
    add_index :geolocations, :slug, unique: true
  end
end
