json.extract! login, :id, :username, :user_type, :created_at, :updated_at
json.url login_url(login, format: :json)
