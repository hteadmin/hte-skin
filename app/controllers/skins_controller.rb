class SkinsController < ApplicationController
  def show 
    @skin = Skin.where("category_id = ? ", params[:id])    
  end

  def detail
    @detail = Skin.find(params[:id])
    @same_skin = Skin.where("category_id = ? ", params[:categories_id]) 
  end

end