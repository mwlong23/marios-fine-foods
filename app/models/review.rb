class Review < ActiveRecord::Base
  validates :username, :presence => true
  validates :rating, :presence => true
  validates :review, :presence => true
  validates :created_at, :presence => true
  validates :updated_at, :presence => true
end
