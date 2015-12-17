require 'rails_helper'
require 'price'

describe Price do
  it 'returns 1 as the calculated price' do
    p = described_class.calculate 1, 1, 1, 1
    expect(p).to eq 1
  end

  it 'returns 1.33 as the calculated price' do
    p = described_class.calculate 1, 3, 2, 1
    expect(p).to eq 1.33
  end

  it 'returns 0.67 as the calculated price' do
    p = described_class.calculate 2, 3, 2, 1
    expect(p).to eq 0.67
  end

  it 'returns 0 as the calculated price' do
    p = described_class.calculate 0, 1, 1, 1
    expect(p).to eq 0
  end
end
