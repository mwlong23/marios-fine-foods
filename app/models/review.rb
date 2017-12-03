class Review < ActiveRecord::Base

  validates :username, :presence => true
  validates :rating, :presence => true, :inclusion => 1..5
  validates :written_review, :presence => true
  validates :description, :length{:in 50..250}


  belongs_to :product
end
