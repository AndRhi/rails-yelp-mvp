class RestaurantsController < ApplicationController
def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

    def create
    @restaurant =Restaurant.new(task_params)
    @restaurant.save
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(task_params)
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])
    @restaurant.destroy

    # no view destroy
    redirect_to restaurants_path
  end

   private

  def task_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:restaurant).permit(:name, :adress, :phone_number, :category)
  end
end
