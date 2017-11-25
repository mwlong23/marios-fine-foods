class WelcomeController < ApplicationController

  def index
    @products = Product.all
    render :welcome
  end




end
