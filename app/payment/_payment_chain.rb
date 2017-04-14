module Payment
  class PaymentChain

    attr_reader :successor

    def initialize(successor = nil)
      @successor = successor
    end


    def process_order(order)
      if accept_order(order)
        return
      elsif @successor
        @successor.process_order(order)
      else
        fail_order(order)
      end
    end


    def fail_order(order)
      puts "O pagamento para o pedido '#{order}' não pôde ser processado."
    end


    def accept_order(order)
      raise '#accept_order method must be implemented.'
    end

  end
end
