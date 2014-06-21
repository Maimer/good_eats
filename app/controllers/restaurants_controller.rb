class RestaurantsController < ApplicationController
  def home
    @restaurants = Restaurant.order("created_at desc").limit(10)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews.all.order('created_at desc')
  end

  def new
    @restaurant = Restaurant.new
    @categories = Category.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to @restaurant
    else
      flash.now[:notice] = "Your restaurant was not succesfully submitted."
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :state, :zip_code, :description, :category_id)
  end
end
