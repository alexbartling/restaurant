class MenuItem < ActiveRecord::Base
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
end
