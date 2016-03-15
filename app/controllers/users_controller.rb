class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @badges = UserBadge.find_by(badge_receiver: @user) || []
  end

  def index
    @users = User.all
  end
end
