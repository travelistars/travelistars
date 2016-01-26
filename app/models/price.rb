class Price < ActiveRecord::Base
  belongs_to :entry, :price_type
end
