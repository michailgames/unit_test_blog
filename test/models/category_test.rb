require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new
  end

  test "is_invalid_without_name" do
    @category.name = nil
    assert_equal(false, @category.valid?, "Category without name should be invalid")
  end
end
