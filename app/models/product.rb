class Product < ApplicationRecord
  validate :type, :name

  has_many :line_items
end