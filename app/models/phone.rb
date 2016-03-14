class Phone < ActiveRecord::Base
  belongs_to :entry
  belongs_to :phone_type
end
