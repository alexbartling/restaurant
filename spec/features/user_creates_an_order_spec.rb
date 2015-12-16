require 'rails_helper'

feature 'User creates an order' do
  scenario 'with valid parameters' do
    visit new_order_path
  end
end
