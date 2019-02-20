class CashRegister
  
  attr_accessor :total, :discount
  
  def initialize (discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(title, price, quantity = 1)
    self.total += price * quantity
  end
  
  def apply_discount
    
    self.total = (total * (100 - @discount.to_f)/100).to_i
    "After the discount, the total come to $#{self.total}"
  
  end 
  
end
