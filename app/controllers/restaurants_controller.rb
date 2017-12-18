class RestaurantsController < ApplicationController
  
  before_action :set_restaurant, only: [:show, :edit, :update, :delete]
    
  def index
    @restaurants = Restaurant.all
  end
  
  def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      flash[:danger] = @restaurant.errors.full_messages.to_sentence
      render 'new'
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    @restaurant.update(restaurant_params)
    redirect_to @restaurant
  end
  
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end
  
  
  private
  
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
  
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :opens, :closes)
  end
    
    
end