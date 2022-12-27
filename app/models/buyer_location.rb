class BuyerLocation < ApplicationRecord
  belongs_to :location
  belongs_to :buyer
end
