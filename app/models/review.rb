class Review < ActiveRecord::Base

  validates :username, :presence => true
  validates :rating, :presence => true
  validates :written_review, :presence => true

  belongs_to :product
end
