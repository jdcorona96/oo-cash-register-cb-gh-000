
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
    if (@discount != 0)
      @total = @total * ((100-discount) / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "After the discount, the total comes to $0."
    end
  end

end #class CashRegister
