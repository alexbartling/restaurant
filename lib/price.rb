class Price 
  def self.calculate stock, total_inv, number_of_items, base_price
    return 0 if stock.zero?
    price = (1 - (stock / total_inv.to_f) * number_of_items) * base_price + base_price
    price.round 2
  end
end
