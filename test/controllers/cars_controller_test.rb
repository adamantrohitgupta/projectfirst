require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get cars_name:string_url
    assert_response :success
  end

  test "should get price:integer" do
    get cars_price:integer_url
    assert_response :success
  end
end
