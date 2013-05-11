class NeedsController < ApplicationController
  before_filter :find_needs

  def new

  end
  def create

  end
  def edit

  end
  def update

  end
  def index

  end
  def show

  end
  def destroy

  end

  private
  def find_users
    @needs = Need.find(params[:id]) if params[:id]
  end

end