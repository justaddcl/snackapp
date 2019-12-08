json.extract! event, :id, :event_type, :event_description, :gatherable_id, :gatherable_type, :created_at, :updated_at
json.url event_url(event, format: :json)
