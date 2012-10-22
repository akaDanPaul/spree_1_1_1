require 'test_helper'

class ClosetItemsControllerTest < ActionController::TestCase
  setup do
    @closet_item = closet_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:closet_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create closet_item" do
    assert_difference('ClosetItem.count') do
      post :create, closet_item: @closet_item.attributes
    end

    assert_redirected_to closet_item_path(assigns(:closet_item))
  end

  test "should show closet_item" do
    get :show, id: @closet_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @closet_item
    assert_response :success
  end

  test "should update closet_item" do
    put :update, id: @closet_item, closet_item: @closet_item.attributes
    assert_redirected_to closet_item_path(assigns(:closet_item))
  end

  test "should destroy closet_item" do
    assert_difference('ClosetItem.count', -1) do
      delete :destroy, id: @closet_item
    end

    assert_redirected_to closet_items_path
  end
end
