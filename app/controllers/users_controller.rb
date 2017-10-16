class UsersController < ApplicationController
  def index
  end

  def show
  @user = current_user.username
  end

  def update
    current_user.update_attribute :admin, true
  end

end
