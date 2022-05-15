class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :service
  belongs_to :user
end
