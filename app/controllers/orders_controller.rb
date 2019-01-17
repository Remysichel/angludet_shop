class OrdersController < ApplicationController
  def index
    @orders = Order.where(user_id: current_user.id)
  end

  def show
    @order = current_user.orders.where(state: 'paid').find(params[:id])
  end

  def create
    wine = Wine.find(params[:wine_id])
    order = Order.create!(wine_sku: wine.sku, amount: wine.price, state: 'pending', user: current_user)

    redirect_to new_order_payment_path(order)
  end
end
