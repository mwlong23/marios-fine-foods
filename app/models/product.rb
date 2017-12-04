class Product < ActiveRecord::Base

  validates :name, :presence => true
  validates :description, :presence => true
  validates :country_of_origin, :presence => true
  validates :price, :presence => true
  # validates :description, length: {in: 50..250}

  has_many :reviews

  scope :made_in_usa, -> { where(country_of_origin: "USA").limit(10)}

  scope :most_reviewed, -> {(
    select("products.id, products.name, products.description, count(reviews.id) as reviews_count")
    .joins(:reviews)
    .group("products.id")
    .order("reviews_count DESC")
    .limit(10)
  )}

  scope :recently_added, -> { order(created_at: :desc).limit(3)}
end
