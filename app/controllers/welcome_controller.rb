class WelcomeController < ApplicationController
  def index
    if params[:admin] == "true"
      @timeFutureShow = (Time.now + 2700).strftime("%I:%M %p")

      # Retrieve data
      @foodItemAdventurous = FoodItem.where(cuisine: "Adventurous").sample
      @foodItemAsian =  FoodItem.where(cuisine: "Asian").sample
      @foodItemWestern = FoodItem.where(cuisine: "Western").sample



      render 'index'
    else
      render 'under_construction'
    end
  end


end
