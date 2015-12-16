class MenuItem < ActiveRecord::Base
  has_many :order_menu_items
  has_many :orders, through: :order_menu_items
  has_many :inventory_levels
  belongs_to :menu
end
