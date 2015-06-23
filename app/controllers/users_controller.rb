class UsersController < ApplicationController
  skip_before_filter :ensure_user, :only => [:create, :new]
  def index
    @users = User.all.order('name DESC')
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
   
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :group_id, :password, :password_confirmation)
    end
end
