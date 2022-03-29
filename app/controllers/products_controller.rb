class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find_by_id(params[:id])
    @line_item = @product.line_items.new
  end
end