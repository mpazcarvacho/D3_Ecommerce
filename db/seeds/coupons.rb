Coupon.destroy_all

# Social media coupon, 10% discount.
Coupon.create(
  unique: false,
  code: "SUMMER2022",
  fix_discount: false,
  discount_value: 0.1,
  used: false,
)

# Coupon for user_id 1, for $5000
Coupon.create(
  unique: true,
  code: "MYCOUPON",
  fix_discount: true,
  discount_value: 5000,
  user_id: 1,
  used: false,
)