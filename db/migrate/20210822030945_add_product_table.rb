class AddProductTable < ActiveRecord::Migration[6.1]
  def change
    create_table :product do |t|
      t.string :type, null: false
      t.string :name, null: false
      t.string :brand
      t.text :description
      t.integer :category, null: false
      t.integer :species_category
      t.integer :quality

      t.timestamps
    end
  end
end
