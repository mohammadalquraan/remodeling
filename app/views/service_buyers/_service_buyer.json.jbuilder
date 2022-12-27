json.extract! service_buyer, :id, :service_id, :buyer_id, :payout, :active, :created_at, :updated_at
json.url service_buyer_url(service_buyer, format: :json)
