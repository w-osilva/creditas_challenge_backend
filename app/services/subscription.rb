module Services
  class Subscription

    def self.activate(order)
      raise "Ordem inválida" unless order.instance_of? Order
      puts "[Ativação de assinatura] #{order.item}"
    end

  end
end