module Payment
  class Digital < PaymentChain

    def accept_order(order)
      if order.item.type.match(/digital/i)
        process_payment(order)
        return true
      end
      false
    end

    def process_payment(order)
      voucher = Voucher.new(amount: 10.0)
      email_body =
%{
  #{order.customer.name}, obrigado pela sua compra!!!
  Produto: #{order.item}
  Você recebeu um cupom de desconto no valor de R$#{voucher.amount} para sua próxima compra.
  O código do seu cupom é #{voucher.code}.
}
      Services::Email.send(to: order.customer.email, subject: "Confirmação de compra", body: email_body)
    end

  end
end
