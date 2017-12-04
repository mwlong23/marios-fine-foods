class ReviewsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @reviews = @product.reviews.all
    render :index
  end

  def show
    @product = Product.find(params[:product_id])
    @review = @product.reviews.find(params[:id])
    render :show
  end

  def new
    @product = Product.find(params[:product_id])
    @review = Review.new
    render :new
  end


  def create
    @product = Product.find(params[:product_id])
    @review = @product.reviews.new(review_params)
    if @review.save
      redirect_to product_path(@review.product)
    else
      render :new
    end
  end


  private
    def review_params
      params.require(:review).permit(:username, :rating, :written_review)
    end
end
