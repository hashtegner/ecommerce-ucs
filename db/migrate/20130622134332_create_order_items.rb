class CreateOrderItems < ActiveRecord::Migration
  def change
    create_table :order_items do |t|
      t.integer :order_id, null: false
      t.foreign_key :orders

      t.integer :item_id, null: false
      t.foreign_key :items

      t.integer :quantity
      t.decimal :price, null: false

      t.timestamps
    end

    add_index :order_items, :order_id
    add_index :order_items, :item_id
    add_index :order_items, [:order_id, :item_id], unique: true
  end
end
