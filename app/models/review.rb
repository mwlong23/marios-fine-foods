class Review < ActiveRecord::Base

  validates :username, :presence => true
  validates :rating, :presence => true
  validates :written_review, :presence => true
  # validates :created_at, :optional => true
  # validates :updated_at, :optional => true

  belongs_to :product
end
