class Product < ApplicationRecord
  validates :type, :name, :category

  enum species_category: [:indica, :sativa, :hybrid]
end