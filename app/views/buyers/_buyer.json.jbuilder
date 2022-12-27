json.extract! buyer, :id, :name, :email, :phone_number, :working_days, :active, :created_at, :updated_at
json.url buyer_url(buyer, format: :json)
