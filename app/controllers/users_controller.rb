class UsersController < ApplicationController
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
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.pow_points = params[:pow_points]
    @user.user_photo = params[:user_photo]
    @user.pro = params[:pro]
    @user.coast = params[:coast]

    if @user.save
      redirect_to "/users", :notice => "User created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    @user.username = params[:username]
    @user.password = params[:password]
    @user.email = params[:email]
    @user.pow_points = params[:pow_points]
    @user.user_photo = params[:user_photo]
    @user.pro = params[:pro]
    @user.coast = params[:coast]

    if @user.save
      redirect_to "/users", :notice => "User updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])

    @user.destroy

    redirect_to "/users", :notice => "User deleted."
  end
end
