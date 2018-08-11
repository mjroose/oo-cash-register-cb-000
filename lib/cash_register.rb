
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
    if @discount != 0
      @total *= 1.0 - Float(@discount) / 100.0
      "After the discount, the total comes to $#{Integer(@total)}."
    else
      "There is no discount to apply."
    end
  end

  def items
    @items.collect do |item|
      item.name
    end
  end

end
