class Location < ActiveRecord::Base
  has_many :entries
  validates :latitude, numericality: true, presence: true
  validates :longitude, numericality: true, presence: true
end
