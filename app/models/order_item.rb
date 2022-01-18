class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :product
  has_many :variations
  has_many :colors, through: :variations
  has_many :sizes, through: :variations

  validates :order_id, presence: true
  validates :product_id, presence: true
  validates :quantity, presence: true
  validates :variation_id, presence: true
end
