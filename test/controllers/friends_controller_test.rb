require 'test_helper'

class FriendsControllerTest < ActionController::TestCase
  setup do
    @friend = friends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:friends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create friend" do
    assert_difference('Friend.count') do
      post :create, friend: { body: @friend.body, contact_names: @friend.contact_names, description: @friend.description, email_id: @friend.email_id, image: @friend.image, phone_number: @friend.phone_number }
    end

    assert_redirected_to friend_path(assigns(:friend))
  end

  test "should show friend" do
    get :show, id: @friend
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @friend
    assert_response :success
  end

  test "should update friend" do
    patch :update, id: @friend, friend: { body: @friend.body, contact_names: @friend.contact_names, description: @friend.description, email_id: @friend.email_id, image: @friend.image, phone_number: @friend.phone_number }
    assert_redirected_to friend_path(assigns(:friend))
  end

  test "should destroy friend" do
    assert_difference('Friend.count', -1) do
      delete :destroy, id: @friend
    end

    assert_redirected_to friends_path
  end
end