class CommentsController < ApplicationController
  before_action :require_user

  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      ActionCable.server.broadcast "comments", render(partial: 'comments/comment', object: @comment)
      # flash[:success] = "Comment was created successfully"
      # redirect_to recipe_path(@recipe)
    else
      flash[:danger] = "Comment was not created"
      redirect_back fallback_location: @blog
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end

end
