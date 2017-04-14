module Payment
  class Subscription < PaymentChain

    def accept_order(order)
      if order.item.type.match(/subscription/i)
        process_payment(order)
        return true
      end
      false
    end

    def process_payment(order)
      Services::Subscription.activate(order)
      email_body =
%{
  #{order.customer.name}, obrigado pela sua assinatura!!!
  Produto: #{order.item}
  Sua assinatura foi ativada com sucesso.
}
      Services::Email.send(to: order.customer.email, subject: "Confirmação de assinatura", body: email_body)
    end

  end
end
