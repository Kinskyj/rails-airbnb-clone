class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    @comment.service = Service.find(params[:service_id])
    @comment.save
    redirect_to service_path(@comment.service)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
