class AddIndexToAdvertisments < ActiveRecord::Migration
  def change
  	add_index :advertisments, :slug, unique: true
  end
end
