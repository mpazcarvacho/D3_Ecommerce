class Coupon < ApplicationRecord
  belongs_to :user, optional: true
  has_many :orders

  # DONE code must be present and be unique. Discount value can't be nil or blank.
  validates :code, presence: true, uniqueness: true, allow_blank: false, allow_nil: false
  validates :discount_value, presence: true, allow_blank: false, allow_nil: false


  def add_coupon
    # if there are more than one coupon, only gets first one
    current_coupons = current_user.coupons.where(used: false)
    if current_user.coupons.present?
      current_coupons.each do |coupon|
        current_order.update(
          coupon_id: coupon.id,
          total: coupon.fix_discount ? current_order.total - coupon.discount_value : current_order.total * (1-coupon.discount_value),
        )
        coupon.update(
          used: true,
        )
      
      end
      
    else
      flash[:alert]="There are no available coupons!"
    end
  end

  def search_coupon

    @coupon = Coupon.all.where(code: params[:q])
  
  #  HERE there will be code to search for available coupons with code
  end
end
