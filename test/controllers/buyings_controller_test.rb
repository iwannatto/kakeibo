require 'test_helper'

class BuyingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buying = buyings(:one)
  end

  test "should get index" do
    get buyings_url
    assert_response :success
  end

  test "should get new" do
    get new_buying_url
    assert_response :success
  end

  test "should create buying" do
    assert_difference('Buying.count') do
      post buyings_url, params: { buying: { name: @buying.name, price: @buying.price } }
    end

    assert_redirected_to buying_url(Buying.last)
  end

  test "should show buying" do
    get buying_url(@buying)
    assert_response :success
  end

  test "should get edit" do
    get edit_buying_url(@buying)
    assert_response :success
  end

  test "should update buying" do
    patch buying_url(@buying), params: { buying: { name: @buying.name, price: @buying.price } }
    assert_redirected_to buying_url(@buying)
  end

  test "should destroy buying" do
    assert_difference('Buying.count', -1) do
      delete buying_url(@buying)
    end

    assert_redirected_to buyings_url
  end
end
