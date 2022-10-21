require 'pry'

class CashRegister

      attr_accessor :discount, :total, :last_purchase, :items

      def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
      end
    
      def add_item(price, amount, quantity = 1)
        self.last_purchase = amount * quantity
        self.total += self.last_purchase

        quantity.times do
          self.items.push(price)
        end
      end


    def void_last_transaction
        
        self.items.pop()
        self.total = total - last_purchase
        if (items.empty?)
            self.total = 0
        end
        # binding.pry
    end

    def apply_discount 
        if (self.discount !=0)
            sale = (100.0 - self.discount.to_f) / 100
      self.total = (self.total * sale)
            "After the discount, the total comes to $800."
        else
            "There is no discount to apply."
        end

    end

end