class AddEndedToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :ended, :datetime
  end
end
