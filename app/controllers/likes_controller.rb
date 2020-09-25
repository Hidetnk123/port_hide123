class LikesController < ApplicationController

  def create
    Like.create(user_id: current_user.id, product_id: params[:id])
    redirect_to product_path
  end

end
