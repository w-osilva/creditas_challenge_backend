module Payment
  class Book < PaymentChain

    def accept_order(order)
      if order.item.type.match(/book/i)
        process_payment(order)
        return true
      end
      false
    end

    def process_payment(order)
      label =
%{
  Cliente: #{order.customer.name}
  Produto: #{order.item}
  Observação: Isento de taxas de acordo com a Constituíção Art. 150, VI, d.
}
      order.shipping = Shipping.new(label: label)
      order.shipping.print_label
    end

  end
end
