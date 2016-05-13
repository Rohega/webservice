require 'test_helper'

class TokensControllerTest < ActionController::TestCase
  setup do
    @token = tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tokens)
  end

  test "should create token" do
    assert_difference('Token.count') do
      post :create, token: { bin: @token.bin, brand: @token.brand, exp_month: @token.exp_month, exp_year: @token.exp_year, id: @token.id, last4: @token.last4, name: @token.name }
    end

    assert_response 201
  end

  test "should show token" do
    get :show, id: @token
    assert_response :success
  end

  test "should update token" do
    put :update, id: @token, token: { bin: @token.bin, brand: @token.brand, exp_month: @token.exp_month, exp_year: @token.exp_year, id: @token.id, last4: @token.last4, name: @token.name }
    assert_response 204
  end

  test "should destroy token" do
    assert_difference('Token.count', -1) do
      delete :destroy, id: @token
    end

    assert_response 204
  end
end
