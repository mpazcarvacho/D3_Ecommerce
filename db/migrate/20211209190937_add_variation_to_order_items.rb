class AddVariationToOrderItems < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_items, :variation, foreign_key: true
  end
end
