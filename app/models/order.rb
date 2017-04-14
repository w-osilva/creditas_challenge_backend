class Order

  attr_accessor :customer, :product, :shipping, :item

  def initialize(customer: nil, item: nil)
    raise "Cliente inválido" unless customer.instance_of? Customer
    raise "Produto inválido" unless item.instance_of? Product

    @id = get_timestamp
    @customer = customer
    @item = item
    @shipping ||= nil
  end

  def shipping=(shipping)
    raise "Remessa inválida" unless shipping.instance_of? Shipping
    @shipping = shipping
  end

  def to_s
    self[:id].to_s
  end

  private
  def get_timestamp
    (Time.now.to_f * 1000).to_i
  end

end
