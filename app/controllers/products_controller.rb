class ProductsController < ApplicationController

  def index
    @products = Product.all
    #@products = Product.includes(:user).order("created_at DESC")
  end

  def new
    @product = Product.new
  end

  def create
    @product = Item.create(item_params)
    if @product.valid?
      @item.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def product_params
    params.require(:product).permit(:text, :image).merge(user_id: current_user.id)
  end
end
