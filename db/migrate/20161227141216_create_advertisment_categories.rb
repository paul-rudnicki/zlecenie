class CreateAdvertismentCategories < ActiveRecord::Migration
  def change
    create_table :advertisment_categories do |t|
      t.references :advertisment, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
