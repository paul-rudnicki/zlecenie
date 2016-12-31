class ChangePriceAdvertisments < ActiveRecord::Migration
  def change
  	change_column :advertisments, :price, :string
  end
end
