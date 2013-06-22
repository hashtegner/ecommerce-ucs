class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :session_id, null: false
      t.string :status, null: false, default: "open"
      t.timestamps
    end

    add_index :orders, :session_id, unique: true
  end
end
