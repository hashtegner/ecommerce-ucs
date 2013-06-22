class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description, null: false
      t.decimal :price, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
