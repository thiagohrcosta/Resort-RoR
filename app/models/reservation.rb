class Reservation < ApplicationRecord
  belongs_to :room
  belongs_to :service
  belongs_to :user

  validates_presence_of :check_in, :check_out, :room_id, :user_id
  validates_numericality_of :room_id, :user_id, only_integer: true

end
