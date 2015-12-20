class CategoriesController < ApplicationController
  before_action :set_category, only: [:show]
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:success] = "'#{@category.name}' category added successfully."
      redirect_to posts_path
    else
      render :new
    end
  end

  def show
  end

  private

    def category_params
      params.require(:category).permit(:name, :summary)
    end

    def set_category
      @category = Category.find(params[:id])
    end
end
