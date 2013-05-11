class NeedsController < ApplicationController
  def new
    @need = Need.new
  end
  def create
    need = Need.new(params[:need])
    if need.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The need couldn't be created."
    end
  end
  def edit
    @need = Need.find(params[:id])
  end
  def update
    @need = Need.find(params[:id])
    @need.update_attributes(params[:need])
    if @need.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @needs = Need.all
  end
  def show
    @need = Need.find(params[:id])
  end
  def destroy
    @need = Need.find(params[:id])
    if @need
      @need.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that need to delete it"
    end
  end
end
