class FavoritesController < ApplicationController

  def index
    @favorites = Favorites.all
  end

  def new
    @favorites = Favorites.new
  end

  def create
    @favorites = Favorites.new(params[:favorites])
    if @favorites.save
      redirect_to favorites_path
    end

  end

  def destroy
    @favorites = Favorites.find_by_id(params[:id])
    if @favorites.destroy
      redirect_to favorites_path
    end
  end

end
