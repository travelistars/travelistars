class Entry < ActiveRecord::Base
  belongs_to :location
  has_many :prices
  has_many :biz_hours
  has_many :closed_days
  has_and_belongs_to_many :genres
  has_and_belongs_to_many :links

  validates :native_name, presence: true
  validates :alpha_name, presence: true
end
