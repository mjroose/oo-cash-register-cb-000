
class CashRegister
  attr_accessor :total, :discount

  def total
    @total
  end

  def initialize(discount = 0)
    @total = 0.0
    @items = []
    @discount = discount
  end

  def add_item(title, price, quantity = 1)
    @items << {:title => title, :price => price, :quantity => quantity}
    @total += price * quantity
  end

  def apply_discount
    @total *= 1.0 - Float(@discount) / 100.0
    puts "After the discount, the total comes to $#{@total}."
  end

end
