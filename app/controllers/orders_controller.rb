class OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    @order = Order.new order_params
    if @order.save
      redirect_to menus_path, notice: 'Success!'
    else
      render :new
    end
  end

  private

  def order_params
    params.
      require(:order).
      permit(
        order_menu_items_attributes: [
          :menu_item_quantity,
          :menu_item_id
        ]
      )
  end
end
