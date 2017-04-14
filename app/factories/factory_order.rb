class FactoryOrder

  def self.make_with_product(type: nil)
    raise "Tipo do produto inválido" if type.nil?
    Order.new(customer: make_a_customer, item: make_a_product(type))
  end

  private
  def self.make_a_customer
    letter = a_letter
    Customer.new(name: "Customer_#{letter}", email: "customer_#{letter}@test.com")
  end

  def self.make_a_product(type)
    letter = a_letter
    price = a_price
    Product.new(name: "Product_#{letter}", type: type, price: price)
  end

  def self.a_letter
    [('a'..'z')].map(&:to_a).flatten.sample
  end

  def self.a_price
    [(0..100)].map(&:to_a).flatten.sample
  end

end