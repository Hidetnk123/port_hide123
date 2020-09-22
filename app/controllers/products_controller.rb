class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :product_set, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.includes(:user).order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.valid?
      @product.save
      redirect_to products_path
    else
      render :new
    end
  end
 
  def show
  end

  def edit
  end

  def update
    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path
    else
      render :show
    end
  end
  private

  def product_params
    params.require(:product).permit(:text, images:[]).merge(user_id: current_user.id)
  end

  def product_set
    @product = Product.find(params[:id])
  end
end
