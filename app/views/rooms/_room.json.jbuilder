json.extract! room, :id, :location, :Room_No, :room_type_id, :created_at, :updated_at
json.url room_url(room, format: :json)