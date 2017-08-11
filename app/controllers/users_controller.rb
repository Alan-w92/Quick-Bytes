class UsersController < ApplicationController
  def index
    if params[:search]
      search = params[:search].gsub(" ", "+")
    else
      search = ""
    end

    json = HTTP.get("https://api.edamam.com/search?q=#{search}&app_id=#{ENV['API_ID']}&app_key=#{ENV['API_KEY']}")
    recipes = JSON.parse(json)
    @recipe_list = recipes['hits']

    @favorite = Favorite.new
    if @favorite.save
      flash[:alert] = "Recipe added to your favorites"
      redirect_to favorites_path
    end
  end
end
