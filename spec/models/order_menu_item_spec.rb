require 'rails_helper'

describe OrderMenuItem do
  it { should belong_to(:menu_item) }
  it { should belong_to(:order) }
  it { should accept_nested_attributes_for(:menu_item) }
  it { should validate_numericality_of(:menu_item_quantity).is_greater_than(0) }

  it 'returns a validation error if quanity is > current_stock of item' do
    i = create :menu_item, inventory_levels: [build(:inventory_level, quantity: 0)]
    o = build(:order_menu_item, menu_item_quantity: 1, menu_item: i)
    o.save
    expect(o.errors.size).to eq 1
  end
end
