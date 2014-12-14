require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

  def setup
    @category = Category.new
  end

  test "is invalid without name" do
    @category.name = nil
    @category.valid?
    assert_not_empty @category.errors[:name], "Category without name should be invalid."
    @category.name = ""
    @category.valid?
    assert_not_empty @category.errors[:name], "Category with empty name should be invalid."
    @category.name = "   "
    @category.valid?
    assert_not_empty @category.errors[:name], "Category with whitespace_only_name should be invalid."
  end

  test "to_s should return category name" do
    @category.name = "SomeName"
    assert_equal "SomeName", @category.to_s, "Category to_s method should return category name."
  end
end
