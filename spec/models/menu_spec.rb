require 'rails_helper'

describe Menu do
  it { should have_many(:menu_items) }
end
