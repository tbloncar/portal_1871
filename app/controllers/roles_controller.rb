class RolesController < ApplicationController
  def new
    @role = Role.new
  end
  def create
    role = Role.new(params[:role])
    if role.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The role couldn't be created."
    end
  end
  def edit
    @role = Role.find(params[:id])
  end
  def update
    @role = Role.find(params[:id])
    @role.update_attributes(params[:role])
    if @role.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @roles = Role.all
  end
  def show
    @role = Role.find(params[:id])
  end
  def destroy
    @role = Role.find(params[:id])
    if @role
      @role.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that role to delete it"
    end
  end

end
