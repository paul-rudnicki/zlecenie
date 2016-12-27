class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.text :content
      t.decimal :price, :precision => 10, :scale => 2
      t.string :realization
      t.boolean :status
      t.references :user, index: true, foreign_key: true
      t.references :advertisment, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
