json.extract! user, :id, :name, :password_digest, :admin, :created_at, :updated_at, :email
json.url user_url(user, format: :json)
json.reservations do
    json.extract! user.reservations, :seat_number, :flight_id
end