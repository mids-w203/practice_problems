class CategoriesController < ApplicationController
  def show
  end
  
  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end
  
  def new
    @category = Category.new
  end

  private

  def category_params
    params.require(:category).permit(:title, :index)
  end
end
