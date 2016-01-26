class Phone < ActiveRecord::Base
  belongs_to :entry, :phone_type
end
