class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order
  belongs_to :cart

  enum strain_type: [:indica, :sativa, :hybrid]
  enum quality: [:low, :medium, :high]
end