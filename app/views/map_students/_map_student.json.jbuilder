json.extract! map_student, :id, :enroll_no, :name, :phone_no, :password, :created_at, :updated_at
json.url map_student_url(map_student, format: :json)