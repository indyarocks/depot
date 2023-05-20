# == Schema Information
#
# Table name: carts
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class CartTest < ActiveSupport::TestCase
  test "#add_product" do
    cart = carts(:one)

    cart.add_product(products(:one))
    cart.add_product(products(:two))
    cart.save
    assert_equal cart.line_items.size, 2

    cart.add_product(products(:one))
    cart.save
    assert_equal cart.line_items.size, 2
  end
end
