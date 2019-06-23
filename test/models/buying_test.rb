require 'test_helper'

class BuyingTest < ActiveSupport::TestCase
  test "has date" do
    buyings(:one).date
  end
  
  class EmptyTest < ActiveSupport::TestCase
    setup do
      @params = {name: "a", price: 1, date: Time.zone.local(2019)}
    end
    
    for k in [:name, :price, :date] do
      test "disallow empty #{k}" do
        @params[k] = nil
        buying = Buying.new(@params)
        assert_not buying.save
      end
    end
  end
end
