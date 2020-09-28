def find_item_by_name_in_collection(name, collection)
  i = 0
  while i < collection.length
    if collection[i][:item] == name
      return collection[i]
    end
    i += 1
  end
end

def consolidate_cart(cart)
  receipt = []
  counter = 0
  while counter < cart.length
    cart_item = find_item_by_name_in_collection(cart[counter][:item],receipt)
    if cart_item
      cart_item[:count] += 1
    else
      cart_item = {
        :item => cart[counter][:item],
        :price => cart[counter][:price],
        :clearance => cart[counter][:clearance],
        :count => 1
      }
      receipt << cart_item
    end
    counter += 1
  end
  receipt
end
