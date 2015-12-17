require 'rails_helper'

describe MenuItem do
  it { should have_many(:orders).through(:order_menu_items) }
  it { should have_many(:inventory_levels) }
  it { should belong_to(:menu) }

  context '#markt_price' do
    it 'returns 1.33 when 3 items in inventory and number of items == 2' do
      i = create :menu_item, price: 1
      i.inventory_levels << build(:inventory_level, quantity: 1)
      expect(i.market_price(3, 2)).to eq 1.33
    end

    it 'returns Out of Stock' do
      i = create :menu_item, price: 1
      i.inventory_levels << build(:inventory_level, quantity: 1)
      i.order_menu_items << build(:order_menu_item, menu_item_quantity: 1)
      expect(i.market_price(3, 2)).to eq 'Out of Stock'
    end
  end

  context '#current_stock_level' do
    before :each do
      @i = create :menu_item, price: 1
      @i.inventory_levels << build(:inventory_level, quantity: 1)
    end

    it 'returns 1 when inventory quantity > orders' do
      expect(@i.current_stock_level).to eq 1
    end

    it 'returns 0 when orders are == inventory quantity' do
      @i.order_menu_items << build(:order_menu_item, menu_item_quantity: 1)
      expect(@i.current_stock_level).to eq 0
    end

    it 'returns 1 when order is from last stock cycle' do
      o = build(:order_menu_item, menu_item_quantity: 1, created_at: DateTime.now - 1.day)
      @i.order_menu_items << o
      expect(@i.current_stock_level).to eq 1
    end
  end
end
