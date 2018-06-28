class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  before_action :set_cart

  private
    def set_cart
      @cart = Cart.find(session[:id])
    rescue ActiveRecord::RecordNotFound
      @cart = Cart.create
      session[:id] = @cart.id
    end

end
