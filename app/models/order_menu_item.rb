class OrderMenuItem < ActiveRecord::Base
  validates :menu_item_quantity, numericality: { greater_than: 0 }
  validates :menu_item, presence: true
  validate :available_quantity
  belongs_to :menu_item
  belongs_to :order
  accepts_nested_attributes_for :menu_item

  private

  def available_quantity
    if menu_item.present? && menu_item.current_stock_level < menu_item_quantity 
      errors.add(:menu_item_quantity, 'is more than the current stock')
    end
  end
end
