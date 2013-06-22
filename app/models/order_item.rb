class OrderItem < ActiveRecord::Base
  validates_presence_of :order_id, :item_id, :price, :quantity
  validates_uniqueness_of :item_id, scope: :order_id

  belongs_to :order
  belongs_to :item

  default_scope lambda { includes(:item) }

  def total_item
    price * quantity
  end
end
