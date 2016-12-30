class ChangeClosedToAdvertisments < ActiveRecord::Migration
  def change
		change_column :advertisments, :closed, :boolean, default: true
  end
end
