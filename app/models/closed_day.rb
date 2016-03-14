class ClosedDay < ActiveRecord::Base
  belongs_to :entry

  validates :closed_code, numericality: {
    only_integer: true, 
    greater_than_or_equal_to: -7,
    less_than_or_equal_to: 31
  }
end
