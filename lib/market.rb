class Market 
  attr_reader :name, :vendors
  def initialize(name)
    @name = name 
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendors
  end
  
  def vendor_names

  end
end