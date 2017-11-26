class Review < ActiveRecord::Base
  belongs_to :product, optional: true
  validates :username, :presence => true
  validates :rating, :presence => true
  validates :review, :presence => true
  validates :created_at, :presence => true
  validates :updated_at, :presence => true

  belongs_to :users
end
