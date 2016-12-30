class ChangeWinnerColumn2 < ActiveRecord::Migration
  def change
  	change_column :advertisments, :winner, :integer, default: nil
  end
end
