class Buyer < ApplicationRecord
  has_many :service_buyers
  has_many :services, through: :service_buyers

  has_many :buyer_locations
  has_many :locations, through: :buyer_locations
end
