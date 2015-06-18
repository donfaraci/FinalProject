class CategoriesController < ApplicationController

  before_filter :authenticate_user!, only: [:index, :edit, :new, :destroy]

	def index
		@categories = current_user.categories.order(:category)
	end

  def new
    @category = current_user.categories.new
  end

  def create
    @category = current_user.categories.new category_params
    if @category.save
      redirect_to categories_path
    else
      render 'new'
    end
  end

	def edit
    @category = current_user.categories.find params[:id]
  end

  def update
    @category = current_user.categories.find params[:id]
      if @category.update category_params
        redirect_to categories_path
      else
        render 'edit'
      end
  end

  def destroy
    @category = current_user.categories.find params[:id]
    @category.destroy
    redirect_to categories_path
  end

  def category_params
    params.require('category').permit(:category, :min_temp, :max_temp)
  end
end
