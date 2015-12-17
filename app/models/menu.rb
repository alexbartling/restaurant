class Menu < ActiveRecord::Base
  has_many :menu_items

  def total_inventory
    menu_items.inject(0) { |i, m| i += m.current_stock_level }
  end

  def number_of_items_in_stock
    menu_items.select { |i| i.current_stock_level > 0 }.size
  end
end
