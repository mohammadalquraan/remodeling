class Admin < ApplicationRecord
  enum admin_type: [:super,:developer,:guest]
end
