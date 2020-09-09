require 'rspec'


describe 'Scock Merchant' do
  it 'has to be an array of integers representing the color(1,2,3..n) of each sock' do
    expect(socks_array).to all(be_an(Integer))
  end


end

