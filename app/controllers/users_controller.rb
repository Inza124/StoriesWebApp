class UsersController < ApplicationController
  def index
  @users = User.all
  end

  def show
  @user = current_user.username
  end

  def stat
    @user = current_user.username
  end


end
