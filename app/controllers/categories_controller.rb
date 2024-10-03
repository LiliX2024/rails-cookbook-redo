class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    # raise
    if @category.save
      redirect_to @category, notice: "Category has been successfully created!"
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @category = Category.find(params[:id])
    if @category.destroy
      redirect_to categories_path, notice: "#{@category.name} has been successfully deleted!"
    else
      redirect_to categories_path, alert: "Category could not be deleted."
    end
  end

  private
  def category_params
    params.require(:category).permit(:name)
  end
end
