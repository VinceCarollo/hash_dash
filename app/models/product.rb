class Product < ApplicationRecord
  validate :type, :name, :category

  enum species_category: [:indica, :sativa, :hybrid]

  has_many :product_orders
  has_many :orders, through: :product_orders
end