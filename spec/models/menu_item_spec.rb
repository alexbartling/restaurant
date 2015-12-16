require 'rails_helper'

describe MenuItem do
  it { should have_many(:menu_items).through(:order_menu_items) }
end
