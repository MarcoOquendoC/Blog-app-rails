class UsersController < ApplicationController
  def index
    @users = User.all.order(:name)
  end

  def show
    @user = User.find(params[:id])
  end
end
