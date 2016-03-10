class Price < ActiveRecord::Base
  belongs_to :entry, :price_type

  validates :from, numericality: true
  validates :to, numericality: true
end
