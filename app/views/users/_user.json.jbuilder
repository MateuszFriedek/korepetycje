json.extract! user, :id, :start_date, :email, :phone_number, :login_id, :created_at, :updated_at
json.url user_url(user, format: :json)
