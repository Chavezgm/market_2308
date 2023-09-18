require './lib/item'

RSpec.describe Item do 
  before (:each) do 
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  describe '#initializes' do 
    it ' instanciates a new Item object' do 
      expect(@item1).to be_an Item
      expect(@item2).to be_an Item
      expect(Item).to respond_to(:new).with(1).argument
    end
  end 

  describe '#name' do 
    it 'has a name and reads its data' do 
      expect(@item1.name).to eq('Peach')
      expect(@item2.name).to eq('Tomato')
    end
  end

  describe '#price' do 
    it ' has a price' do 
      expect(@item1.price).to eq("$0.75")
      expect(@item2.price).to eq('$0.50')
    end
  end

  describe '#not_instock' do 
    it 'not_instock should start with 0' do 
      expect(@item1.not_instock).to be_zero
      expect(@item2.not_instock).to be_zero
    end
  end
end