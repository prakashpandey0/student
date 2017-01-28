json.extract! student, :id, :name, :class, :contact_no, :created_at, :updated_at
json.url student_url(student, format: :json)