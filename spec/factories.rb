FactoryGirl.define do
  factory :menu_item do
    description {"Something"}
    price {20}
  end

  factory :menu do
    name { 'Dinner' }
  end

  factory :inventory_level do
    quantity { 1 }
  end

  factory :order_menu_item do
    menu_item_quantity { 1 }
  end
end
