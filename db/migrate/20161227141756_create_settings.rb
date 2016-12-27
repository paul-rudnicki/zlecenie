class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :site_name
      t.integer :posts_per_page, default: 10
      t.boolean :maintenance, default: false

      t.timestamps null: false
    end
  end
end
