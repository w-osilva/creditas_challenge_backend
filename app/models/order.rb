class Order

  attr_accessor :customer, :product, :shipping, :item

  def initialize(customer: nil, item: nil)
    raise "Cliente inválido" unless customer.instance_of? Customer
    raise "Produto inválido" unless item.instance_of? Product

    @customer = customer
    @item = item
    @shipping ||= nil
  end

  def shipping=(shipping)
    raise "Remessa inválida" unless shipping.instance_of? Shipping
    @shipping = shipping
  end

end
