require 'rspec'

socks_array = [1,2,3,1,1,2,2,3,3,2,1,1,1]

def sock_color_frequency(socks_array)
  socks_array.tally
end

def sock_color_pairs(socks_array)
  sock_color_frequency_hash = sock_color_frequency(socks_array)
  pair_colors = {} #initializing hash
  sock_color_frequency_hash.each do |color, frequency| 
    pair_colors[color] = frequency / 2 # We create keys as pair_colors[color] as we save the related value 
    # * As we only use integers will give us integer result(will ignore decimals(Float numbers))
  end
  pair_colors
end

def sock_pairs_that_can_sell(socks_array)
  pairs_accumulator = 0
  sock_color_pairs(socks_array).each {|color, number_of_pairs| pairs_accumulator += number_of_pairs }
  pairs_accumulator
end

describe 'Scock Merchant' do
  it 'has to be an array of integers representing the color(1,2,3..n) of each sock' do
    expect(socks_array).to all(be_an(Integer))
  end

  it 'counts colors/integers into a hash as key(color/integer), value(frequency)' do
		expect(sock_color_frequency(socks_array)).to eq({1=>6, 2=>4, 3=>3})
  end

  it 'counts pairs for each color' do
    expect(sock_color_pairs(socks_array)).to eq({1 => 3, 2 => 2, 3 => 1})
  end

  it 'shows the number of pairs that can be saled' do
    expect(sock_pairs_that_can_sell(socks_array)).to eq(6)
  end
end

