class Order < ActiveRecord::Base
  has_many :order_menu_items
  has_many :menu_items, through: :order_menu_items
  accepts_nested_attributes_for :order_menu_items
end
