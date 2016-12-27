class CreateAdvertisments < ActiveRecord::Migration
  def change
    create_table :advertisments do |t|
      t.string :title
      t.text :content
      t.decimal :price, :precision => 10, :scale => 2
      t.boolean :status, default: false
      t.string :slug
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
