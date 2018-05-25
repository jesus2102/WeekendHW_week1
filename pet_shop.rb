# 1
def pet_shop_name(shop_name)
  return shop_name[:name]
end

# 2
def total_cash(amount)
  return amount[:admin][:total_cash]
end

# 3 and 4
def add_or_remove_cash(shop_name, amount_modified)
  shop_name[:admin][:total_cash] += amount_modified
end

# 5
def pets_sold(shop_name)
  shop_name[:admin][:pets_sold]
end

# 6
def increase_pets_sold(shop_name, number_pets_sold)
  shop_name[:admin][:pets_sold] += number_pets_sold
end
