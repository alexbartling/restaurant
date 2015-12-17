menu = Menu.create name: 'Dinner'

['Steak', 'Chicken', 'Salmon', 'Pasta', 'Turkey'].each do |food|
  item = MenuItem.create(description: food, price: 20)
  item.inventory_levels << InventoryLevel.create(quantity: 20)
  menu.menu_items << item
end
