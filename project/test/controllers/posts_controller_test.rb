require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post = posts(:one)
  end

  test "should get index" do
    get posts_url
    assert_response :success
  end

  test "should get new" do
    get new_post_url
    assert_response :success
  end

  test "should create post" do
    assert_difference('Post.count') do
      post posts_url, params: { post: { administrator_id: @post.administrator_id, attachment: @post.attachment, body: @post.body, dislikes: @post.dislikes, dumpster_id: @post.dumpster_id, flags: @post.flags, image: @post.image, likes: @post.likes, super_admin_id: @post.super_admin_id, title: @post.title, user_id: @post.user_id, wall_id: @post.wall_id } }
    end

    assert_redirected_to post_url(Post.last)
  end

  test "should show post" do
    get post_url(@post)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_url(@post)
    assert_response :success
  end

  test "should update post" do
    patch post_url(@post), params: { post: { administrator_id: @post.administrator_id, attachment: @post.attachment, body: @post.body, dislikes: @post.dislikes, dumpster_id: @post.dumpster_id, flags: @post.flags, image: @post.image, likes: @post.likes, super_admin_id: @post.super_admin_id, title: @post.title, user_id: @post.user_id, wall_id: @post.wall_id } }
    assert_redirected_to post_url(@post)
  end

  test "should destroy post" do
    assert_difference('Post.count', -1) do
      delete post_url(@post)
    end

    assert_redirected_to posts_url
  end
end
