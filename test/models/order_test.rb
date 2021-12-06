require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  test "generate a random number on create" do
    user = users(:one)
    order = Order.create(user_id: user.id)
    
    assert_not order.number.nil?
  end

  test 'number must be unique' do
    user = users(:one)
    order = Order.create(user_id: user.id)

    dup_order = order.dup

    assert_not dup_order.valid?
  end

  test 'adds products as order_items' do
    user = users(:one)
    order = Order.create(user_id: user.id)
    product = products(:one)
    quantity = 1
    order.add_product(product.id, quantity)

    assert_equal(order.order_items.count,1)
  end

  test 'products with zero stock cant be added to cart' do
    user = users(:one)
    order = Order.create(user_id: user.id)
    product = products(:two)
    order.add_product(product.id,1)

    assert_equal(order.order_items.count,0)
  end
end
