class Product < ApplicationRecord
  validate :type, :name, :category

  enum species_category: [:indica, :sativa, :hybrid]
end