require 'test_helper'

class FactualitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @factuality = factualities(:one)
  end

  test "should get index" do
    get factualities_url
    assert_response :success
  end

  test "should get new" do
    get new_factuality_url
    assert_response :success
  end

  test "should create factuality" do
    assert_difference('Factuality.count') do
      post factualities_url, params: { factuality: { mobile_no: @factuality.mobile_no, teachers_name: @factuality.teachers_name } }
    end

    assert_redirected_to factuality_url(Factuality.last)
  end

  test "should show factuality" do
    get factuality_url(@factuality)
    assert_response :success
  end

  test "should get edit" do
    get edit_factuality_url(@factuality)
    assert_response :success
  end

  test "should update factuality" do
    patch factuality_url(@factuality), params: { factuality: { mobile_no: @factuality.mobile_no, teachers_name: @factuality.teachers_name } }
    assert_redirected_to factuality_url(@factuality)
  end

  test "should destroy factuality" do
    assert_difference('Factuality.count', -1) do
      delete factuality_url(@factuality)
    end

    assert_redirected_to factualities_url
  end
end
