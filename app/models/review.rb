class Review < ActiveRecord::Base
  has_many :children, :class_name => "Review", :foreign_key => "review_id", dependent: :destroy
  belongs_to :parent, :class_name => "Review", :foreign_key => "review_id"
  belongs_to :entry
end
