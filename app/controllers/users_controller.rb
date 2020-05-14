class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :require_same_user, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:index, :destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      cookies.signed[:user_id] = @user.id
      redirect_to chat_path
    else
      render 'new'
    end
  end

  def show
    @user_blogs = @user.blogs.paginate(page: params[:page], per_page: 5)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to chat_path
    else
      render 'edit'
    end
  end

  def destroy
    if !current_user.admin?
      @user.destroy
      redirect_to users_path
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def require_same_user
    if current_user != @user and !current_user.admin?
      redirect_to root_path
    end
  end

  def require_admin
    if logged_in? && !current_user.admin?
      redirect_to root_path
    end
  end

end
