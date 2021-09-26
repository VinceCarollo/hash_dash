class Product < ApplicationRecord
  validate :type, :name, :category

  enum species_category: [:indica, :sativa, :hybrid]

  # Creation of product disallowed
  validate :block_save

  private

  def block_save
    errors.add(:id, ': A Product must have a type')
  end
end