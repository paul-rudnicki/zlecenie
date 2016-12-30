class ChangeClosedToAdvertisments2 < ActiveRecord::Migration
  def change
		change_column :advertisments, :closed, :boolean, default: false
  end
end
