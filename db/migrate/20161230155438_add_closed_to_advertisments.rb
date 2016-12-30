class AddClosedToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :closed, :boolean, default: false
  end
end
