class OrdersController < ApplicationController
  def new
    @product = Product.find(params[:product_id])
    @order = Order.find_by_id(session[:order_id]) || Order.new
  end

  def create

  end
end