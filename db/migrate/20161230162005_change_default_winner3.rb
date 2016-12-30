class ChangeDefaultWinner3 < ActiveRecord::Migration
  def change
  	 change_column  :advertisments, :winner, :integer, null: true
  end
end
