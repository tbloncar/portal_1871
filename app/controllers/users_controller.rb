class UsersController < ApplicationController
  def new
    @user = Uuer.new
  end
  def create
    user = Uuer.new(params[:user])
    if user.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The user couldn't be created."
    end
  end
  def edit
    @user = Uuer.find(params[:id])
  end
  def update
    @user = Uuer.find(params[:id])
    @user.update_attributes(params[:user])
    if @user.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @users = Uuer.all
  end
  def show
    @user = Uuer.find(params[:id])
  end
  def destroy
    @user = Uuer.find(params[:id])
    if @user
      @user.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that user to delete it"
    end
  end
end
