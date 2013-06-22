class CartController < ApplicationController
  def index
    @cart = Cart.new session[:session_id]
  end

  def add_item
    @cart = Cart.add_item(session[:session_id], params[:id])
    redirect_to cart_path, notice: "Item adicionado ao carrinho"
  end

  def remove_item
    @cart = Cart.remove_item(session[:session_id], params[:id])
    redirect_to cart_path, notice: "Item removido do carrinho"
  end
end
