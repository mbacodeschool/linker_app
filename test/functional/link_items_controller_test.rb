require 'test_helper'

class LinkItemsControllerTest < ActionController::TestCase
  setup do
    @link_item = link_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:link_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create link_item" do
    assert_difference('LinkItem.count') do
      post :create, link_item: { needs_email: @link_item.needs_email, original_url: @link_item.original_url, password: @link_item.password, short_name: @link_item.short_name }
    end

    assert_redirected_to link_item_path(assigns(:link_item))
  end

  test "should show link_item" do
    get :show, id: @link_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @link_item
    assert_response :success
  end

  test "should update link_item" do
    put :update, id: @link_item, link_item: { needs_email: @link_item.needs_email, original_url: @link_item.original_url, password: @link_item.password, short_name: @link_item.short_name }
    assert_redirected_to link_item_path(assigns(:link_item))
  end

  test "should destroy link_item" do
    assert_difference('LinkItem.count', -1) do
      delete :destroy, id: @link_item
    end

    assert_redirected_to link_items_path
  end
end
