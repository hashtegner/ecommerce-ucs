class User < ActiveRecord::Base
  authentication
  validates_presence_of :email, :login
  validates_uniqueness_of :email, :login

  has_many :orders
end
