class UsersController < ApplicationController
  def index
  end

  def show
  @user = current_user.username
  end

end
