json.extract! bus, :id, :class, :seats, :licence_number, :created_at, :updated_at
json.url bus_url(bus, format: :json)
