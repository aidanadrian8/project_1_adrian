json.extract! dog_show, :id, :name, :start_time, :end_time, :created_at, :updated_at
json.url dog_show_url(dog_show, format: :json)
