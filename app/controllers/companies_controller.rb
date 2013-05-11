class CompaniesController < ApplicationController
  def new
    @company = Company.new
  end
  def create
    company = Company.new(params[:company])
    if company.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The company couldn't be created."
    end
  end
  def edit
    @company = Company.find(params[:id])
  end
  def update
    @company = Company.find(params[:id])
    @company.update_attributes(params[:company])
    if @company.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @companies = Company.all
  end
  def show
    @company = Company.find(params[:id])
  end
  def destroy
    @company = Company.find(params[:id])
    if @company
      @company.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that company to delete it"
    end
  end
end
