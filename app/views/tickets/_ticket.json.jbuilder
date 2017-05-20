json.extract! ticket, :id, :user_id, :trip_id, :ticket_state, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
