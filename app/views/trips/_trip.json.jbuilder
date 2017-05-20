json.extract! trip, :id, :departure, :destination, :is_express, :route_id, :created_at, :updated_at
json.url trip_url(trip, format: :json)
