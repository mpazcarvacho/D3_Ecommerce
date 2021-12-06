class Color < ApplicationRecord
  has_many :variations
  has_many :products, through: :variations
  has_many :sizes, through: :variations
end
