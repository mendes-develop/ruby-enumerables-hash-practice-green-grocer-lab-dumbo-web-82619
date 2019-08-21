def consolidate_cart(cart)
   new_hash = {}

  cart.each do|item|
  food_name = item.keys.first
  # over here, 
    if new_hash[food_name] != nil
      new_hash[food_name][:count] += 1
    else
      new_hash[food_name] = item[food_name]
      new_hash[food_name][:count] = 1
    end
  
  end

  return new_hash
end

def apply_coupons(cart, coupons)
  coupons.each do |coupon|
  item = coupon[:item] 

  if cart[item] && cart[item][:count] >= coupon[:num]
    if cart["#{item} W/COUPON"]
      cart["#{item} W/COUPON"][:count] += 1

    else
      cart["#{item} W/COUPON"] = {
        :price => coupon[:cost],
        :clearance => cart[item][:clearance],
        :count => 1
      }

    end
    cart[item][:count] -= coupon[:num]

  end
end
  cart
# new_hash = {}

# for i in coupons 
#     (cart.keys).each do |food| 
     
#       if  i[:item] == food 

#         new_hash[food] = cart[food]
#         new_hash[food][:count] = cart[food][:count] - i[:num]

#       else
#         new_hash[food] = cart[food]
      
#       end
#       if  i[:item] == food
              
#     end
#   end
#   # coupons.each do |x|
#   # if  true #(cart.keys).include?(x)
#   #     new_hash["#{x[:item]} W/COUPON"] = cart[:item]
#   #     new_hash["#{x[:item]} W/COUPON"][:price] = i[:cost] / i[:num].to_f
#   #     new_hash["#{x[:item]} W/COUPON"][:count] = i[:num]
#   #   end
#   # end  
# end    

#   for i in coupons
#     if cart.keys.include?(i[:item])
#       food = cart.keys.first
#       new_hash["#{food} W/COUPON"] = cart[food]
#       new_hash["#{food} W/COUPON"][:price] = i[:cost] / i[:num].to_f
#       new_hash["#{food} W/COUPON"][:count] = i[:num]

#     end
#   end
#   new_hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
