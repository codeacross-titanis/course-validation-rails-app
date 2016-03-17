class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @badges = UserBadge.where(badge_receiver: @user)
    @courses = @user.courses
  end

  def index
    @users = User.all
  end
end
