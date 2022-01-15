class Order < ApplicationRecord

  ORDER_PREFIX = 'PO'
  RANDOM_SIZE = 9
  belongs_to :user
  has_many :order_items
  has_many :products, through: :order_items
  has_many :payments
  belongs_to :coupons, optional: :true

  # función anónima o lambda para pasar parámetros
  before_create -> { generate_number(RANDOM_SIZE)}

  validates :number, uniqueness: true

  def generate_number(size)
    self.number = loop do
      rand_str = random_candidate(size)
      break rand_str unless Order.exists?(number: rand_str)
    end
    
  end

  def random_candidate(size)
    "#{ORDER_PREFIX}#{Array.new(size){rand(size)}.join}"
  end

  def add_product(product_id, quantity, variation_id)
    # DONE Add variations field to  orderitem
    product = Product.find(product_id)
    if product && product.stock > 0
      # DONE add variation_id
      # BUG order id missing??? You cannot call create unless the parent is saved
      
      order_items.create(product_id: product.id, quantity: quantity, price: product.price, variation_id: variation_id)
      compute_total
    end
  end

  def compute_total
    sum=0
    order_items.each do |item|
      sum += item.price
    end
    # update_attribute(name, value) public. Updates a single attribute and saves the record.
    update_attribute(:total, sum)
  end

end
