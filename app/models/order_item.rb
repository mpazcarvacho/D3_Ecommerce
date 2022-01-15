class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :variations
  has_many :colors, through: :variations
  has_many :sizes, through: :variations

  # TODO 
  # def product
  #   variation.product
  # end
end
