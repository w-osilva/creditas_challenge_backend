class Shipping

  attr_accessor :label

  def initialize(label: '')
    @label = label
  end

  def print_label
    puts "[Impressão de etiqueta] #{@label}"
  end
end