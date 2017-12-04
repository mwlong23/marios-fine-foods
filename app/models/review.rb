class Review < ActiveRecord::Base

  validates :username, :presence => true
  validates :rating, :presence => true
  validates :written_review, :presence => true, length: {in: 5..10}




  belongs_to :product
end
