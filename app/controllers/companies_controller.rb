class UsersController < ApplicationController
  before_filter :find_users

  private
  def find_users
    @users = User.find(params[:id]) if params[:id]
  end
end
