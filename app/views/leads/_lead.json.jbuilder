json.extract! lead, :id, :first_name, :last_name, :email, :phone_number, :city, :state_code, :street_address, :zip_code, :sold, :service_id, :created_at, :updated_at
json.url lead_url(lead, format: :json)
