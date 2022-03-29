class AddLineItemsTable < ActiveRecord::Migration[6.1]
  def change
    create_table :line_items do |t|
      t.belongs_to :order
      t.belongs_to :product
      t.belongs_to :cart
      t.integer :strain_type
      t.integer :quality
      t.integer :quantity

      t.timestamps
    end
  end
end
