require 'rspec'

socks_array = [1,2,3,1,1,2,2,3,3,2,1,1,1]

# def pair_counter(socks_array)
  color_frequency_hash = {}

  socks_array.each do |sock|
    count = socks_array.count(sock)
    color_frequency_hash[sock] = count  
  end

# end

describe 'Scock Merchant' do
  it 'has to be an array of integers representing the color(1,2,3..n) of each sock' do
    expect(socks_array).to all(be_an(Integer))
  end

  it 'counts colors/integers into a hash as key(color/integer), value(frequency)' do
		expect(color_frequency_hash).to eq({1=>6, 2=>4, 3=>3})
  end
end

