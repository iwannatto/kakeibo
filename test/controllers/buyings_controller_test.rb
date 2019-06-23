require 'test_helper'

class BuyingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buying = buyings(:one)
  end

  test "index page includes name, price, date" do
    get buyings_url
    assert_response :success
    assert_select 'thead tr' do
      assert_select 'th:nth-child(1)', 'Name'
      assert_select 'th:nth-child(2)', 'Price'
      assert_select 'th:nth-child(3)', 'Date'
    end
    assert_select 'tbody tr:nth-child(1)' do
      assert_select 'td:nth-child(1)', @buying.name
      assert_select 'td:nth-child(2)', "#{@buying.price}"
      assert_select 'td:nth-child(3)', "#{@buying.date}"
    end
  end

  test "new page includes input forms correspond to name, price, date" do
    get new_buying_url
    assert_response :success
    assert_select 'form .field', 3
  end

  test "should create buying" do
    assert_difference('Buying.count') do
      post buyings_url, params: { buying: { name: @buying.name, price: @buying.price, date: @buying.date } }
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
