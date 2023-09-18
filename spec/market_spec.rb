require './lib/item'
require './lib/vendor'
require './lib/market'

RSpec.describe Market do 
  before (:each) do 
    @market1 = Market.new("South Pearl Street Farmers Market")
    @vendor1 = Vendor.new("Rocky Mountain Fresh")
    @vendor2 = Vendor.new("Ba-Nom-a-Nom")
    @vendor3 = Vendor.new("Palisade Peach Shack")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: "$0.50"})
    @item3 = Item.new({name: "Peach-Raspberry Nice Cream", price: "$5.30"})
    @item4 = Item.new({name: "Banana Nice Cream", price: "$4.25"})
  end

  describe '#Initializes' do 
    it 'instanciates Market' do 
      expect(@market1). to be_a Market
    end
  end

  describe '#name' do 
    it 'has a name' do 
      expect(@market1.name).to eq("South Pearl Street Farmers Market")
      expect(@market1.vendors).to eq([])
    end

    it ' shows the vendors name' do 
    @market1.add_vendor(@vendor1)
    @market1.add_vendor(@vendor2)
    @market1.add_vendor(@vendor3)
    expect(@market.vendor_names)
    end
  end

  
end