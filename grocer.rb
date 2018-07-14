def consolidate_cart(cart)
  # code here
  consolidated_cart = {}
  cart.each do |hash_of_items| #iterate through the hash_of_items
    hash_of_items.each do |item, value| #item is key value is value which is hash of paramters
      if !consolidated_cart.has_key? (item)
        consolidated_cart[item] = {}
        consolidated_cart[item][count] = 0 
      else 
        consolidated_cart[item][count]+=1 #if it's not in the consolidated cart, put it in and count how many times it's in there.
      end
      
      value.each do |parameter, value_of_parameter|
        if !consolidated_cart[item].has_key? (parameter)
          consolidated_cart[item][parameter] = value_of_parameter
        end 
      end
    end 
  end 
  return consolidated_cart
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
