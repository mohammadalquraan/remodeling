json.extract! location, :id, :city, :country, :state_code, :state_name, :zip_code, :created_at, :updated_at
json.url location_url(location, format: :json)
