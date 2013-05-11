class UsersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if user.save
      session[:user_id] = @user.id
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The user couldn't be created."
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])

    @user.update_attributes(params[:user])
    if @user.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @users = User.all
  end
  def show
    @user = User.find(params[:id])
  end
  def destroy
    @user = User.find(params[:id])
    if @user
      @user.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that user to delete it"
    end
  end
end
