json.extract! flight, :id, :flight_no, :origin, :destination, :date, :created_at, :updated_at, :airplane_id
json.url flight_url(flight, format: :json)
json.airplane do
    json.extract! flight.airplane, :name, :row, :column
end