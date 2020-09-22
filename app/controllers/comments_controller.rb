class CommentsController < ApplicationController

  def new
    @comments = Comment.all
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(text: params[:comment][:text])
    if @comment.save
      ActionCable.server.broadcast 'message_channel', content: @comment
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    render :show
  end

  
end
