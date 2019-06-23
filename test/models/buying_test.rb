require 'test_helper'

class BuyingTest < ActiveSupport::TestCase
  test "has date" do
    buyings(:one).date
  end
end
