require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = Post.new
  end

  test "is invalid without title" do
    @post.title = nil
    @post.valid?
    assert_not_empty @post.errors[:title], "Post without title should be invalid."
    @post.title = ""
    @post.valid?
    assert_not_empty @post.errors[:title], "Post with empty title should be invalid."
    @post.title = "   "
    @post.valid?
    assert_not_empty @post.errors[:title], "Post with whitespace only title should be invalid."
  end

  test "is invalid without content" do
    @post.content = nil
    @post.valid?
    assert_not_empty @post.errors[:content], "Post without content should be invalid."
    @post.content = ""
    @post.valid?
    assert_not_empty @post.errors[:content], "Post with empty content should be invalid."
    @post.content = "   "
    @post.valid?
    assert_not_empty @post.errors[:content], "Post with whitespace only content should be invalid."
  end

  test "should be able to display category" do
    category = Category.new
    category.name = "SomeName"
    @post.category = category
    assert_equal "SomeName", @post.category.to_s, "Post should be able to display category name."
  end
end
