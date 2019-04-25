class CookingsController < ApplicationController
  before_action :check_for_login, :only => [:new, :create]

  def index
  @cookings = Cooking.all
  render :index
  end


  def new
    @cooking = Cooking.new
  end

  def create
    cooking = Cooking.create cooking_params
    @current_user.cooking << cooking
    redirect_to root_path
  end

  def show
    @cooking = Cooking.find params[:id]
    render :show
  end

  def create
    cooking = Cooking.new
    cooking.title = params[:title]
    cooking.image = params[:image]
    cooking.materials << Material.find(params[:material_id])
    cooking.sauces << Sauce.find(params[:sauce_id])
    cooking.step = params[:step]
    cooking.save
    redirect_to cooking_path(cooking.id)
  end

  def edit
    @cooking = Cooking.find params[:id]
  end

  def update
    cooking = Cooking.find params[:id]
    cooking.title = params[:title]
    cooking.image = params[:image]
    cooking.materials << Material.find(params[:material_id])
    cooking.sauces << Sauce.find(params[:sauce_id])
    cooking.step = params[:step]
    cooking.save
    redirect_to cooking_path(cooking.id)
  end

  def destroy
    cooking = Cooking.find params[:id]
    cooking.destroy
    redirect_to cookings_path
  end

  private
  def cooking_params
    params.require(:cooking).permit(:title)
  end



end
