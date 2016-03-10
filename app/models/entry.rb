class Entry < ActiveRecord::Base
  belongs_to :location
  has_many :prices, :biz_hours, :closed_days
  has_and_belongs_to_many :genres, :links

  validates :native_name, presence: true
  validates :alpha_name, presence: true
end
