json.extract! coupon, :id, :unique, :code, :string, :fix_discount, :discount_value, :user_id, :created_at, :updated_at
json.url coupon_url(coupon, format: :json)
