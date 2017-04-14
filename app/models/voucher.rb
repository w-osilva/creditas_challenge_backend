require 'digest'
class Voucher

  attr_accessor :amount, :code

  def initialize(amount: 0.0)
    @amount = amount
    @code = Digest::MD5.hexdigest(Time.now.to_s)
  end

  def amount=(amount)
    @amount = '%.2f' % amount
  end

  def amount
    '%.2f' % @amount
  end
end
