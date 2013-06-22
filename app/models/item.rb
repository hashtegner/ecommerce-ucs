class Item < ActiveRecord::Base
  validates_presence_of :description, :price, :image

  has_many :order_items, dependent: :restrict
end
