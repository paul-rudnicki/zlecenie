class CreateAdvertismentGeolocations < ActiveRecord::Migration
  def change
    create_table :advertisment_geolocations do |t|
      t.references :advertisment, index: true, foreign_key: true
      t.references :geolocation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
