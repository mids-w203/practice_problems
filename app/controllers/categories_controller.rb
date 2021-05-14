class CategoriesController < ApplicationController
  http_basic_authenticate_with name: 'mids', password: 'w203', except: [:show]
    
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
    @category = Category.new
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
    params.require(:category).permit(:title, :index)
  end
end
