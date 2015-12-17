require 'rails_helper'

feature 'User creates an order' do
  background do
    i = build(:inventory_level, quantity: 10)
    i2 = build(:inventory_level, quantity: 10)
    @menu_item_1 = create :menu_item, description: 'Chicken', inventory_levels: [i]
    @menu_item_2 = create :menu_item, description: 'Steak', inventory_levels: [i2]
  end

  scenario 'with valid parameters', js: true do
    visit new_order_path
    add_menu_item 10, @menu_item_1
    add_menu_item 7, @menu_item_2
    click_button 'Submit'
    expect(page).to have_content 'Success!' 
  end

  def add_menu_item quantity, menu_item
    click_link 'add menu item'
    all(:css, '.order_menu_item_quantity').last.set(quantity)
    all(:css, '.order_menu_item_id').last.select(menu_item.description)
  end
end
