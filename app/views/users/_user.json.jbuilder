json.extract! user, :id, :owner_name, :created_at, :updated_at
json.url user_url(user, format: :json)