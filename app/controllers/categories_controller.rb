class CategoriesController < ApplicationController
  load_and_authorize_resource except: %i[public]
  before_action :authenticate_user!, except: [:index]

  def index
    return unless current_user

    @user = current_user
    @categories = @user.categories.includes(:expenditures)
  end

  def show
    @category = Category.find(params[:id])
    @expenditures = @category.expenditures.order('created_at DESC')
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    @category.user_id = current_user.id

    if @category.save
      redirect_to categories_path
      flash[:notice] = 'Category created successfully'
    else
      flash[:alert] = 'Category not created'
      render :new
    end

    
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
