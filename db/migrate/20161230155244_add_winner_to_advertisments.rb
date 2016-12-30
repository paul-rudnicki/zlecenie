class AddWinnerToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :winner, :integer, default: nil
  end
end
