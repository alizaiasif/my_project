json.extract! patient, :id, :name, :cnic, :contact, :address, :created_at, :updated_at
json.url patient_url(patient, format: :json)