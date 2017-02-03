require 'test_helper'

class MySchedulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @my_schedule = my_schedules(:one)
  end

  test "should get index" do
    get my_schedules_url
    assert_response :success
  end

  test "should get new" do
    get new_my_schedule_url
    assert_response :success
  end

  test "should create my_schedule" do
    assert_difference('MySchedule.count') do
      post my_schedules_url, params: { my_schedule: { course_name: @my_schedule.course_name, date: @my_schedule.date, duration: @my_schedule.duration, start_time: @my_schedule.start_time, subjects: @my_schedule.subjects, time: @my_schedule.time } }
    end

    assert_redirected_to my_schedule_url(MySchedule.last)
  end

  test "should show my_schedule" do
    get my_schedule_url(@my_schedule)
    assert_response :success
  end

  test "should get edit" do
    get edit_my_schedule_url(@my_schedule)
    assert_response :success
  end

  test "should update my_schedule" do
    patch my_schedule_url(@my_schedule), params: { my_schedule: { course_name: @my_schedule.course_name, date: @my_schedule.date, duration: @my_schedule.duration, start_time: @my_schedule.start_time, subjects: @my_schedule.subjects, time: @my_schedule.time } }
    assert_redirected_to my_schedule_url(@my_schedule)
  end

  test "should destroy my_schedule" do
    assert_difference('MySchedule.count', -1) do
      delete my_schedule_url(@my_schedule)
    end

    assert_redirected_to my_schedules_url
  end
end
