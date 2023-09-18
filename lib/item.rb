class Item
  attr_reader :name, :price , :not_instock

  def initialize(data)
    @name = data[:name]
    @price = data[:price]
    @not_instock = 0
  end
end