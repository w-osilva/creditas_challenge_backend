module Payment
  class Physical < PaymentChain

    def accept_order(order)
      if order.item.type.match(/physical/i)
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
  Observação: Colocar na caixa do envio.
}
      order.shipping = Shipping.new(label: label)
      order.shipping.print_label
    end

  end
end
