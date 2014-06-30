class CategoriesController < ApplicationController
  def show
    @category = Category.where("group_id = ? ", params[:id])
  end
end