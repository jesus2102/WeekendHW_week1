# 1
def pet_shop_name(shop_name)
  return shop_name[:name]
end

# 2
def total_cash(amount)
  return amount[:admin][:total_cash]
end

# 3
def add_or_remove_cash(shop_name, amount_modified)
  shop_name[:admin][:total_cash] += amount_modified
end
