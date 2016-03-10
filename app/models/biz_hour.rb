class BizHour < ActiveRecord::Base
  belongs_to :entry

  validates :biz_hours, numericality: {
    only_integer: true,
    greater_than_or_equal_to: -7,
    less_than_or_equal_to: 31
  }
end
