Dir[File.join("./app", "**/*.rb")].each {|f| load f }

chain_of_payment =
  Payment::Physical.new(
    Payment::Subscription.new(
      Payment::Book.new(
        Payment::Digital.new
      )
    )
  )

orders = [
  FactoryOrder.make_with_product(type: :physical),
  FactoryOrder.make_with_product(type: :subscription),
  FactoryOrder.make_with_product(type: :book),
  FactoryOrder.make_with_product(type: :digital)
]

orders.each do |order|
  puts "-----------------------------------------------------------------------------------------------------"
  chain_of_payment.process_order(order)
end
