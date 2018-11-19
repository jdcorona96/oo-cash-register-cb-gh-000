
class CashRegister

  def initialize(discount = 0)
    @total = 0;
    @discount = discount
  end

  attr_accessor :total, :discount

  def add_item(title, price, quantity = 1)
    @total += price * quantity
  end

  def apply_discount
    @total = @total * ((100-discount) / 100.0)
    "After the discount, the total comes to $#{@total}."
  end

end #class CashRegister
