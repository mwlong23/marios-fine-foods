class Review < ActiveRecord::Base

  validates :username, :presence => true
  validates :rating, :presence => true
  validates :written_review, :presence => true, length: {in: 50..250}




  belongs_to :product
end
