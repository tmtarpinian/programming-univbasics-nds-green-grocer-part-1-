def find_item_by_name_in_collection(name, collection)

  # Implement me first!

  collection.each do |item_hash|
    if item_hash[:item] == name
      return item_hash
    end 
  end

  return nil

  #[x]iterate over the collection
  #[x]check the value of `:item` in each nested hash.
  #[x]If a match is found, the method should return that entire hash.
  #[x]If a match is not found, the method should return nil.


end

def consolidate_cart(cart)
  # Consult README for inputs and outputs

  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.

  new_cart = []
  index = 0

  cart.each_with_index do |item_hash, index|
    found_item = find_item_by_name_in_collection(item_hash[:item], new_cart)
    if found_item == nil
      item_hash[:count] = 1
      item_hash[:index] = index
      new_cart << item_hash
      index += 1
    else
      #found_item should now look like this => :item=>"AVOCADO", :price=>3.0, :clearance=>true, :count=>1, :index => 0
      found_item[:index] # this should now give us an integer that we can use to access the appropriate index in the new_cart
      new_cart[found_item[:index]][:count] += 1    #this will increase the count by 1 for a particular item 
    end
  end

new_cart
end


  