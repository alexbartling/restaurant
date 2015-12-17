class MenuItem < ActiveRecord::Base
  has_many :order_menu_items
  has_many :orders, through: :order_menu_items
  has_many :inventory_levels
  belongs_to :menu

  def market_price total_inv, number_of_items
    require 'price'
    Price.calculate current_stock_level, total_inv, number_of_items, price
  end

  def current_stock_level
    i = inventory_levels.last
    orders = order_menu_items.select { |o| o.created_at > i.created_at }
    i.quantity - orders.sum(&:menu_item_quantity)
  end
end
