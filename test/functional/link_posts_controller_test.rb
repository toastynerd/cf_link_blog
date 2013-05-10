require 'test_helper'

class LinkPostsControllerTest < ActionController::TestCase
  setup do
    @link_post = link_posts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:link_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link_post" do
    assert_difference('LinkPost.count') do
      post :create, link_post: { description: @link_post.description, link: @link_post.link, title: @link_post.title }
    end

    assert_redirected_to link_post_path(assigns(:link_post))
  end

  test "should show link_post" do
    get :show, id: @link_post
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link_post
    assert_response :success
  end

  test "should update link_post" do
    put :update, id: @link_post, link_post: { description: @link_post.description, link: @link_post.link, title: @link_post.title }
    assert_redirected_to link_post_path(assigns(:link_post))
  end

  test "should destroy link_post" do
    assert_difference('LinkPost.count', -1) do
      delete :destroy, id: @link_post
    end

    assert_redirected_to link_posts_path
  end
end
