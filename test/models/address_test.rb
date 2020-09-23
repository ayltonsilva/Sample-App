require 'test_helper'

class AddressTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    @address = @user.create_address(address_name: "Lorem ipsum", city: "Lisbon", zip_code: "2625-231", country: "Portugal")
  end

  test "should be valid" do 
    assert @address.valid?
  end

  test "user id should be present" do 
    @address.user_id = nil 
    assert_not @address.valid?
  end

  test "address should be present" do 
    @address.address_name = " " 
    assert_not @address.valid?
  end

  test "city should be present" do 
    @address.city = " " 
    assert_not @address.valid?
  end

  test "zip_code should be present" do 
    @address.zip_code =  " "  
    assert_not @address.valid?
  end

  test "country should be present" do 
    @address.country = " " 
    assert_not @address.valid?
  end
end
