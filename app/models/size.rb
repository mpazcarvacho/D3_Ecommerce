class Size < ApplicationRecord
  has_many :variations
  has_many :products, through: :variations
  has_many :colors, through: :variations
end
