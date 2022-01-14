class AddUsedColumnToCoupon < ActiveRecord::Migration[5.2]
  def change
    add_column :coupons, :used, :boolean
  end
end
