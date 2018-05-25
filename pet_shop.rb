# 1
def pet_shop_name(shop)
  return shop[:name]
end

# 2
def total_cash(amount)
  return amount[:admin][:total_cash]
end

# 3 and 4
def add_or_remove_cash(shop, amount_modified)
  shop[:admin][:total_cash] += amount_modified
end

# 5
def pets_sold(shop)
  shop[:admin][:pets_sold]
end

# 6
def increase_pets_sold(shop, number_pets_sold)
  shop[:admin][:pets_sold] += number_pets_sold
end

# 7
def stock_count(shop)
  shop[:pets].length()
end

# 8 and 9
def pets_by_breed(shop, breed)
  total_by_breed = []
  for pet in shop[:pets]
    if breed == pet[:breed]
      total_by_breed.push(pet)
    end
  end
  return total_by_breed
end

# 10 and 11
def find_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet_name == pet[:name]
      return pet
    end
  end
  return nil
end

# 12
def remove_pet_by_name(shop, pet_name)
  for pet in shop[:pets]
    if pet_name == pet[:name]
      shop[:pets].delete(pet)
    end
  end
end

# 13
def add_pet_to_stock(shop, new_pet)
  shop[:pets] << new_pet
end

# 14
def customer_cash(customer)
 customer[:cash]
end

# 15
def remove_customer_cash(customer, amount)
  customer[:cash] -= amount
end

# 16
def customer_pet_count(customer)
  customer[:pets].count()
end

# 17
def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

# extension 1 and 2
def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end

# extension 3
def sell_pet_to_customer(shop, pet_sold, customer)
  return if pet_sold == nil
  return if customer[:cash] < pet_sold[:price]  
      add_pet_to_customer(customer, pet_sold)
      remove_pet_by_name(shop, pet_sold[:name])
      increase_pets_sold(shop, 1)
      remove_customer_cash(customer, pet_sold[:price])
      add_or_remove_cash(shop, pet_sold[:price])
end
