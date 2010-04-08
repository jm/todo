require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  test "should create item" do
    assert_difference('Item.count') do
      post :create, :item => { :text => "Do this." }, :list_id => lists(:one).to_param
    end

    assert_redirected_to list_path(assigns(:list))
  end

  test "should destroy item" do
    assert_difference('Item.count', -1) do
      delete :destroy, :id => items(:one).to_param, :list_id => lists(:one).to_param
    end

    assert_redirected_to list_path(lists(:one))
  end
end
