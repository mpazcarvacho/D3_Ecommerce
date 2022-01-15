class Coupon < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders
end
