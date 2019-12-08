class MenuCotegoriesController < ApplicationController

  def index
    @menuCotegories = MenuCategory.all
  end

  def add
    if request.post? then
      MenuCategory.create(menuCategory_params)
      goback
    else
      @menuCategory = MenuCategory.new
    end

  end

  def edit
    @menuCategory = MenuCategory.find(params[:id])
    if request.patch? then
      @menuCategory.update(menuCategory_params)
      goback
    end

  end

  def delete
    MenuCategory.find(params[:id]).destroy
    goback
  end


  private
  def menuCategory_params
    params.require(:menu_category).permit(:categoryName)
  end
  
  private
  def goback
    redirect_to "/menu_cotegories"
  end


end
