
class CashRegister
  attr_accessor :total, :discount

  def total
    self.apply_discount
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
    @total = @total * Float(1 - @discount / 100)
    puts "After the discount, the total comes to $#{@total}." 
  end

end
