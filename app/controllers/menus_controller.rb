class MenusController < ApplicationController

  def index
    @menus = Menu.all
    logger.debug("2")

    @searchWord = params[:find]
    @refine = Menu.new
    
    if params[:commit] == "絞り込み"
      @menus = MenuCategory.where categoryName: params[:categoryName]

      logger.debug("^^^^^^^^^")
      logger.debug("ここもだよ")
    end

    if params[:sort] == "IDの昇順"
      @menus = Menu.all.order(id: "asc")
    elsif params[:sort] == "IDの降順"
      @menus = Menu.all.order(id: "desc")
    elsif params[:sort] == "登録日時の古い順"
      @menus = Menu.all.order(created_at: "asc")
    elsif params[:sort] == "登録日時の新しい順"
      @menus = Menu.all.order(created_at: "desc")
    elsif params[:status] == "提供中"
      @menus = Menu.where status: params[:status]
    elsif params[:status] == "停止中"
      @menus = Menu.where status: params[:status]
    end

    if params[:find] != nil
      @menus = Menu.where "name like ?", '%' + params[:find] + '%'
    end
  end

  def show
    @menu = Menu.find(params[:id])
  end




  def add
    if request.post? then
      Menu.create(menu_params)
      goback
    else
      @menu = Menu.new
    end
    
  end

  def edit
    @menu = Menu.find(params[:id])
    if request.patch? then
      @menu.update(menu_params)
      goback
    end
  end

  def delete
    Menu.find(params[:id]).destroy
    goback
  end

def login_check
  @account = current_account
end

  private
  def menu_params
    params.require(:menu).permit(:name,:category,:price,:cost,:costRate,:status,:calorie,:date,:memo)
  end
  
  def goback
    redirect_to "/menus"
  end

end
