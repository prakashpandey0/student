require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get dashboard" do
    get pages_dashboard_url
    assert_response :success
  end

  test "should get student" do
    get pages_student_url
    assert_response :success
  end

  test "should get factulities" do
    get pages_factulities_url
    assert_response :success
  end

  test "should get myschedule" do
    get pages_myschedule_url
    assert_response :success
  end

end
