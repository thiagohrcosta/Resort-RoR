class Room < ApplicationRecord
  has_one_attached :photo
  has_many :reservations

  validates_presence_of :quantity, :bed, :bathroom, presence: true
  validates_numericality_of :quantity, :bed, :bathroom, only_integer: true, greater_than: 0
  validates_presence_of :price, presence: true
  validates_numericality_of :price, greater_than: 0
  validates_presence_of :description, presence: true
end
