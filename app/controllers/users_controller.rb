class UsersController < ApplicationController


  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Thank you for signing up!"
    else
      render "new"
    end
  end

  def show

  end

  def edit

  end

  def destroy

  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
