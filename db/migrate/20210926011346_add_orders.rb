class AddOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.bigint :price, null: false
    end
  end
end
