class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.boolean :unique
      t.string :code
      t.boolean :fix_discount
      t.decimal :discount_value
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
