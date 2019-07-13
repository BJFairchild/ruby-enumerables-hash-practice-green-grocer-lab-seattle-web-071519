def consolidate_cart(cart)
   my_cart = {}
  
  cart.each_with_index do |item, i|
    item.each do |food, info|
      if my_cart[food]
        my_cart[food][:count] += 1
      else
        my_cart[food] = info
        my_cart[food][:count] = 1
      end
    end
  end
  my_cart
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
