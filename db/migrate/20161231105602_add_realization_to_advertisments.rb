class AddRealizationToAdvertisments < ActiveRecord::Migration
  def change
    add_column :advertisments, :realization, :string
  end
end
