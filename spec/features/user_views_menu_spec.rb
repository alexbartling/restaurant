require 'rails_helper' 

feature 'User views menu' do 
  scenario 'when menu has items in stock' do
    m = create :menu, name: 'Dinner'
    m.menu_items << build(:menu_item, inventory_levels: [build(:inventory_level)])
    visit menu_path(m)
    expect(page).to have_content 'Dinner'
  end
end
