class Product < ApplicationRecord
  has_and_belongs_to_many :categories
  has_many :order_items
  has_many :orders, through: :order_items
  has_many :variations
  has_many :colors, through: :variations
  has_many :sizes, through: :variations

  validates :name, presence: true
  validates :price, presence: true
end
