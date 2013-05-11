class ResourcesController < ApplicationController
  def new
    @resource = Resource.new
  end
  def create
    resource = Resource.new(params[:resource])
    if resource.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The resource couldn't be created."
    end
  end
  def edit
    @resource = Resource.find(params[:id])
  end
  def update
    @resource = Resource.find(params[:id])
    @resource.update_attributes(params[:resource])
    if @resource.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @resources = Resource.all
  end
  def show
    @resource = Resource.find(params[:id])
  end
  def destroy
    @resource = Resource.find(params[:id])
    if @resource
      @resource.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that resource to delete it"
    end
  end
end
