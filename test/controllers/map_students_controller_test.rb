require 'test_helper'

class MapStudentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @map_student = map_students(:one)
  end

  test "should get index" do
    get map_students_url
    assert_response :success
  end

  test "should get new" do
    get new_map_student_url
    assert_response :success
  end

  test "should create map_student" do
    assert_difference('MapStudent.count') do
      post map_students_url, params: { map_student: { enroll_no: @map_student.enroll_no, name: @map_student.name, password: @map_student.password, phone_no: @map_student.phone_no } }
    end

    assert_redirected_to map_student_url(MapStudent.last)
  end

  test "should show map_student" do
    get map_student_url(@map_student)
    assert_response :success
  end

  test "should get edit" do
    get edit_map_student_url(@map_student)
    assert_response :success
  end

  test "should update map_student" do
    patch map_student_url(@map_student), params: { map_student: { enroll_no: @map_student.enroll_no, name: @map_student.name, password: @map_student.password, phone_no: @map_student.phone_no } }
    assert_redirected_to map_student_url(@map_student)
  end

  test "should destroy map_student" do
    assert_difference('MapStudent.count', -1) do
      delete map_student_url(@map_student)
    end

    assert_redirected_to map_students_url
  end
end
