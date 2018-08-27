class Booking < ApplicationRecord
  has_many :airports
  has_many :flights
  has_many :departures
  has_many :passengers
  accepts_nested_attributes_for :passengers
end
