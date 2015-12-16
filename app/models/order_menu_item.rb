class OrderMenuItem < ActiveRecord::Base
  validates :menu_item_quantity, numericality: { greater_than: 0 }
  validates :menu_item, presence: true
  belongs_to :menu_item
  belongs_to :order
  accepts_nested_attributes_for :menu_item
end
