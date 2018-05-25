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
