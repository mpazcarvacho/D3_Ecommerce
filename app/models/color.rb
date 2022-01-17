class Color < ApplicationRecord
  has_many :variations
  has_many :products, through: :variations
  has_many :sizes, through: :variations

  # DONE added presence validation
  validates :description, presence: true, allow_blank: false, allow_nil: false
end
