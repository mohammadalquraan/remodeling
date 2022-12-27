class Service < ApplicationRecord

  has_many :service_buyers
  has_many :buyers, through: :service_buyers

end
