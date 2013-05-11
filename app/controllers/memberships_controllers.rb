class MembershipController < ApplicationController
  def new
    @membership = Membership.new
  end
  def create
    membership = Membership.new(params[:membership])
    if membership.save
      render 'index'
    else
      render 'new', notice: "Oops, we messed up. The membership couldn't be created."
    end
  end
  def edit
    @membership = Membership.find(params[:id])
  end
  def update
    @membership = Membership.find(params[:id])
    @membership.update_attributes(params[:membership])
    if @membership.save
      redirect_to companies_url
    else
      render 'edit', notice: 'Oops, we messed up. We\'re working hard to fix it, but the information was not updated'
    end
  end
  def index
    @memberships = Membership.all
  end
  def show
    @membership = Membership.find(params[:id])
  end
  def destroy
    @membership = Membership.find(params[:id])
    if @membership
      @membership.destroy
      render 'index'
    else
      render 'index', notice: "Couldn't find that membership to delete it"
    end
  end
end
