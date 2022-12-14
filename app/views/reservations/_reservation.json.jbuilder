json.extract! reservation, :id, :user_id, :flight_id, :created_at, :updated_at, :seat_number
json.url reservation_url(reservation, format: :json)
json.user do
    json.extract! reservation.user, :name
end