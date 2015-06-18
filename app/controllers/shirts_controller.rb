class ShirtsController < ApplicationController

	before_filter :authenticate_user!, only: [:index, :edit, :new, :show, :destroy]

	def index
    @shirts = current_user.shirts.order(:name)
  end

	def new
		@shirt = current_user.shirts.new
 
	end

	def create
    @shirt = current_user.shirts.new shirt_params
    @shirt.save
    redirect_to @shirt
  end

  def edit
    @shirt = current_user.shirts.find params[:id]
  end

  def update
    @shirt = current_user.shirts.find params[:id]
 
    if @shirt.update shirt_params
      redirect_to shirts_path
    else
      render 'edit'
    end
  end

  def show
    @shirt = current_user.shirts.find params[:id]
  end

  def destroy
    @shirt = current_user.shirts.find params[:id]
    @shirt.destroy
    redirect_to shirts_path
  end

	def shirt_params
    params.require('shirt').permit(:name, :description, :category_id)
	end

end