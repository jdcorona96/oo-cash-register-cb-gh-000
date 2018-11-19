
class CashRegister

  def initialize(discount = 0)
    @total = 0;
    @discount = discount
    @items = []
  end

  attr_accessor :total, :discount, :last_item

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    1..quantity.times {@items << title}
    @last_item = price
  end

  def apply_discount
    if (@discount == 0)
      "There is no discount to apply."
    elsif @discount >= 100
      "After the discount, the total comes to $0."
    else
      @total = @total * ((100-discount) / 100.0)
      "After the discount, the total comes to $#{@total.to_i}."
    end
  end

  def items
    @items
  end

  def void_last_transaction
    @total -= @last_item
  end

end #class CashRegister
