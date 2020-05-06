require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  index = 0
  while index < coupons.length
    cart_item = find_item_by_name_in_collection(cart[index][:item], cart)
    coupon_item_name = "#{coupon[counter][:item]} W/COUPON"
    index += 1
  end
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
