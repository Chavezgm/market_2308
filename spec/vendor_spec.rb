require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do 
  before (:each) do 
    @vendor = Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  describe '#initializes' do 
    it 'instanciates a new vendor object' do 
      expect(@vendor).to be_a(Vendor)
    end
  end

  describe '#name' do 
    it ' has a name ' do 
      expect(@vendor.name).to eq("Rocky Mountain Fresh")
    end
  end

  describe '#Inventory' do
    it ' has nothing in its inventory' do 
      expect(@vendor.inventory).to eq({})
    end
  end

  describe '#check_stock' do 
    it ' checks the stock of an item' do 
      expect(@vendor.check_stock(@item1)).to eq(0)
    end
  end

end