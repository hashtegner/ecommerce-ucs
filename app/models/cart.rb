class Cart
  def self.add_item(session_id, item_id)
    new(session_id).add_item(item_id)
  end

  def self.remove_item(session_id, item_id)
    new(session_id).remove_item(item_id)
  end

  attr_reader :order

  def initialize(session_id)
    @order = Order.where(session_id: session_id).first_or_create
  end

  def add_item(item_id)
    Order.transaction do
      item = Item.find item_id

      order_item = order.order_items.where(item: item).first_or_initialize
      order_item.quantity = order_item.quantity.to_i + 1
      order_item.price = item.price
      order_item.save!
    end
  end

  def remove_item(item_id)
    order.order_items.where(item_id: item_id).destroy_all
  end

  def items
    @order.order_items
  end

  def total
    items.collect(&:total_item).reduce(:+)
  end

  def as_json(arg)
    {
      cart: {
        total: total,
        items: items
      }
    }
  end

end
