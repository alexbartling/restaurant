class InventoryLevel < ActiveRecord::Base
  belongs_to :menu_item
end
