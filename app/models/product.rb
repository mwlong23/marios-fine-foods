class Product < ActiveRecord::Base
  has_many :reviews
  validates :name, :presence => true
  validates :description, :presence => true
  validates :country_of_origin, :presence => true
  validates :price, :presence => true
  validates :created_at, :presence => true
  validates :updated_at, :presence => true

end
