class Product

  attr_accessor :name, :price, :description, :type

  def initialize(type: '', name: '', price: 0.0, description: '')
    @type = type
    @name = name
    @price = price
    @description = description
  end

  def price=(amount)
    @price = '%.2f' % amount
  end

  def price
    '%.2f' % @price
  end

  def to_s
    @name
  end

end
