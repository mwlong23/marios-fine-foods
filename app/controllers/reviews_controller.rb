class ReviewsController < ApplicationController
  def index
    @product = Product.find(params[:product_id])
    @review = @product.reviews
    render :index
  end

  def show

  end

  def new
  end

  def create

  end

  def destroy
  end

  private
    def review_params
      params.require(:review).permit(:username, :rating, :review, :product_id, :updated_at, :create_table)
    end
end
