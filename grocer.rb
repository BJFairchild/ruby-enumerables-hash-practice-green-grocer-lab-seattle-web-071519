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

def apply_coupons(cart:[], coupons:[])
  # code here	  result = {}
  # code here#
  cart.each do |food, info|
    coupons.each do |coupon|
      if food == coupon[:item] && info[:count] >= coupon[:num]
        info[:count] =  info[:count] - coupon[:num]
        if result["#{food} W/COUPON"]
          result["#{food} W/COUPON"][:count] += 1
        else
          result["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
        end
      end
    end
    result[food] = info
  end
  result
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
