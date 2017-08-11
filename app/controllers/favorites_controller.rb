class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new(favorite_params)
    if @favorite.save
      flash[:alert] = "Recipe added to your favorites."
      redirect_to users_path
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to favorites_path, notice: 'Favorite recipe was successfully removed.'
  end

  private

  def favorite_params
    params.require(:favorite).permit(:title, :image, :serving, :calorie, :element, :url, :user_id)
  end

end
