class PagesController < ApplicationController

before_filter :authenticate_user!, only: [:index]

  def index
    @weather_lookup = WeatherLookup.new(params[:zip])
    if @weather_lookup.valid?
      @weather_lookup.fetch_weather
    else
      flash.now[:error] = "Invalid ZIP code"   
    end  
    @categories = current_user.categories.order(:category)
  end
end