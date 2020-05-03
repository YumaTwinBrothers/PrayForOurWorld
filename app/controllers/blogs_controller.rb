class BlogsController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy, :like]
  before_action :require_user, except: [:index, :show, :like]
  before_action :require_same_user, only: [:edit, :update, :destroy]
  before_action :require_user_like, only: [:like]

  def index
    @blogs = Blog.paginate(page: params[:page], per_page: 5)
  end

  def show
    @comment = Comment.new
    @comments = @blog.comments.paginate(page: params[:page], per_page: 5)
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.user = current_user
    if @blog.save
      flash[:success] = "blog was created successfully!"
      redirect_to blog_path(@blog)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @blog.update(blog_params)
      flash[:success] = "blog was updated successfully!"
      redirect_to blog_path(@blog)
    else
      render 'edit'
    end
  end

  def destroy
    Blog.find(params[:id]).destroy
    flash[:success] = "blog deleted successfully"
    redirect_to blogs_path
  end

  def like
    like = Like.create(like: params[:like], user: current_user, blog: @blog)
    if like.valid?
      flash[:success] = "Your selection was successful"
      redirect_back fallback_location: @blog
    else
      flash[:danger] = "You can only like/dislike a blog once"
      redirect_back fallback_location: @blog
    end
  end

  private

    def set_blog
      @blog = Blog.find(params[:id])
    end

    def blog_params
      params.require(:blog).permit(:title, :body)
    end

    def require_same_user
      if current_user != @blog.user and !current_user.admin?
        flash[:danger] = "You can only edit or delete your own blogs"
        redirect_to blogs_path
      end
    end

    def require_user_like
      if !logged_in?
        flash[:danger] = "You must be logged in to perform that action"
        redirect_back fallback_location: @blog
      end
    end
end
