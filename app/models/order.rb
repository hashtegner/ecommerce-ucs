class Order < ActiveRecord::Base
  validates_presence_of :session_id, :status
  validates_uniqueness_of :session_id

  has_many :order_items

  default_scope lambda { includes(:order_items) }

  belongs_to :user
end
