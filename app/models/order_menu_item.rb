class OrderMenuItem < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :order
  accepts_nested_attributes_for :menu_item
end
