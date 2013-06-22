class CartController < ApplicationController
  respond_to :html ,:json
  require_logged_user only: :finish

  def index
    @cart = Cart.new cart_session_id
    respond_with @cart
  end

  def add_item
    @cart = Cart.add_item(cart_session_id, params[:id])

    respond_with @cart, location: cart_path
  end

  def remove_item
    @card = Cart.remove_item(cart_session_id, params[:id])

    respond_with @card, location: cart_path
  end

  private
  def cart_session_id
    session[:cart_session_id] ||= session[:session_id]
  end
end
