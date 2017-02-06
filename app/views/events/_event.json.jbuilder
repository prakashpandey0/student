json.extract! event, :id, :event_tiltle, :event_type, :select_class, :select_day, :start_date, :event_duration, :created_at, :updated_at
json.url event_url(event, format: :json)