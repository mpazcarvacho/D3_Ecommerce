class Variation < ApplicationRecord
  belongs_to :product
  belongs_to :color
  belongs_to :size
  has_many :order_items
end
