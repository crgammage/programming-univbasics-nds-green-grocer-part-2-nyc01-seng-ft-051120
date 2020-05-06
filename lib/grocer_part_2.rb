require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  index = 0
  while index < coupons.length
    cart_item = find_item_by_name_in_collection(cart[index][:item], cart)
    coupon_item_name = "#{coupon[counter][:item]} W/COUPON"
    cart_item_with_coupon = find_item_by_name_in_collection(coupon_item_name, cart)
    if cart_item && cart_item[:count] >= coupons[index][:num]
      if cart_item_with_coupon
        cart_item_with_coupon[:count] += coupons[index][:num]
        cart_item[:count] - coupons[index][:num]
      else
        cart_item_with_coupon = {
          :item => coupon_item_name,
          :price => coupons[index][:cost] / coupons[index][:num],
          :count => coupons[index][:num],
          :clearance => cart_item[:clearance]
        }
        cart << cart_item_with_coupon
        cart_item[:count] -= coupons[index][:num]
      end
    end
    index += 1
  end
  cart
end

def apply_clearance(cart)

end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
