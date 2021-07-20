class CategoriesController < ApplicationController
  before_action :logged_in_user
  before_action :instructor_user, except: [:show]
    
  def show
    @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def edit
    @category = Category.find(params[:id]) 
  end
  
  def new
    @category = Category.new(index: (Category.all.pluck(:index).max || 0) + 1)
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      redirect_to @category
    else
      render 'edit'
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    redirect_to root_url
  end

  private

  def category_params
    params.require(:category).permit(:title, :index, :extra)
  end
end
