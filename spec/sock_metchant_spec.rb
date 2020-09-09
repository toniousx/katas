require 'rspec'

socks_array = [1,2,3,1,1,2,2,3,3,2,1,1,1]


describe 'Scock Merchant' do
  it 'has to be an array of integers representing the color(1,2,3..n) of each sock' do
    expect(socks_array).to all(be_an(Integer))
  end


end

