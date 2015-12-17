require 'rails_helper'

describe Menu do
  it { should have_many(:menu_items) }

  context '#number_of_items_in_stock' do
    before :each do
      @m = create :menu
    end

    it 'returns 1' do
      i = create :menu_item, inventory_levels: [build(:inventory_level, quantity: 10)]
      i2 = create :menu_item, inventory_levels: [build(:inventory_level, quantity: 0)]
      @m.menu_items << i
      expect(@m.number_of_items_in_stock).to eq 1
    end
  end
end
