class PagesController < ApplicationController

  def new
    @page = Page.new
  end
  def create
    page = Page.new(params[:page])
    if page.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The page couldn't be created."
    end
  end
  def edit
    @page = Page.find(params[:id])
  end
  def update
    @page = Page.find(params[:id])
    @page.update_attributes(params[:page])
    if @page.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @pages = Page.all
  end
  def show
    @page = Page.find(params[:id])
  end
  def destroy
    @page = Page.find(params[:id])
    if @page
      @page.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that page to delete it"
    end
  end

end
