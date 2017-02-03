json.extract! my_schedule, :id, :course_name, :subjects, :start_time, :time, :duration, :date, :created_at, :updated_at
json.url my_schedule_url(my_schedule, format: :json)