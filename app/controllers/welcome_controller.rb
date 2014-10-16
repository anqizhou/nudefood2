class WelcomeController < ApplicationController
  def index
    if params[:admin] == "true"
      @timeFutureShow = (Time.now + 2700).strftime("%I:%M %p")
      render 'index'
    else
      render 'under_construction'
    end
  end


end
