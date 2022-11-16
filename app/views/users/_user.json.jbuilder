json.extract! user, :id, :name, :password_digest, :admin, :created_at, :updated_at, :email
json.url user_url(user, format: :json)
