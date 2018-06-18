class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!


  # def current_order
  #   if !session[:order_id].nil?
  #     puts Order.find(session[:order_id])
  #     Order.find(session[:order_id])
  #   else
  #     Order.new
  #   end
  # end

end
