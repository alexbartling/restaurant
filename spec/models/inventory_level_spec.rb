require 'rails_helper'

describe InventoryLevel do
  it { should belong_to(:menu_item) }
end
