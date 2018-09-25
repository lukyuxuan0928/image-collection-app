require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @post = posts(:one)
  end

  test "should get index" do
    get posts_path
    assert_response :success
  end

  test "should get create" do
    post posts_path(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_path(@post)
    assert_response :success
  end

  test "should get show" do
    get post_path(@post)
    assert_response :success
  end

  test "should get destroy" do
    delete post_path(@post)
    assert_response :success
    #assert_redirected_to posts_path
  end

  test "should get new" do
    get new_post_path
    assert_response :success
  end

  test "should get update" do
    patch post_path(@post)
    assert_response :success
  end

end
