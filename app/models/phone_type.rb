class PhoneType < ActiveRecord::Base
  has_many :phones

  validates :name, presence: true
end
