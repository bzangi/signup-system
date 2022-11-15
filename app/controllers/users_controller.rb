class UsersController < ApplicationController
  before_action :require_signin, except: [:new, :create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user, notice: "Thanks for signing up!"
    else
      render :new
    end
  end
  
  private
  
  def user_params
    params.require(:user).
      permit(:username, :name, :nascimento, :cpf, :cidade, :estado, :email, :password, :password_confirmation)
  end
end
