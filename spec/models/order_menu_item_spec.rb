require 'rails_helper'

describe OrderMenuItem do
  it { should belong_to(:menu_item) }
  it { should belong_to(:order) }
  it { should accept_nested_attributes_for(:menu_item) }
end
