json.extract! event_organizer, :id, :description, :firstName, :lastName, :email, :created_at, :updated_at
json.url event_organizer_url(event_organizer, format: :json)
