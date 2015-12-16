require 'rails_helper'

describe MenuItem do
  it { should have_many(:orders).through(:order_menu_items) }
  it { should have_many(:inventory_levels) }
  it { should belong_to(:menu) }
end
