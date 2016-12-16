json.extract! reservattion, :id, :date, :patient_id, :room_id, :created_at, :updated_at
json.url reservattion_url(reservattion, format: :json)