class Edible < Product
  enum category: [:baked_good, :beverage, :gummy, :hard_candy, :tincture, :pills]
end