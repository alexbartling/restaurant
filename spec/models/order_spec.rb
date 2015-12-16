require 'rails_helper'

describe Order do
  it { should have_many(:menu_items).through(:order_menu_items) }
  it { should accept_nested_attributes_for(:order_menu_items) }
end
