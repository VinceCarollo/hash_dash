class ApplicationController < ActionController::Base
  before_action :set_cart

  def current_cart
    @current_cart ||= Cart.find_by(id: session[:cart_id])
  end

  private

  def set_cart
    if session[:cart_id].present?
      cart = Cart.find_by(:id => session[:cart_id])
      if cart.present?
        @current_cart = cart
      else
        session[:cart_id] = nil
      end
    end

    unless session[:cart_id].present?
      @current_cart = Cart.create
      session[:cart_id] = @current_cart.id
    end
  end
end
