class AddProductOrdersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :product_orders do |t|
      t.belongs_to :order
      t.belongs_to :product

      t.timestamps
    end
  end
end
