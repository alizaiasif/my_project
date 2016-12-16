json.extract! doctor, :id, :name, :Address, :cnic, :contact, :department_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)