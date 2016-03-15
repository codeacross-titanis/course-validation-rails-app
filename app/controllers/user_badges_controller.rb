class UserBadgesController < ApplicationController

  def create
    @user = User.find(params[:user_id])
    @user_badge = UserBadge.new
    @user_badge.badge_assigner = current_user
    @user_badge.badge_receiver = @user
    if @user_badge.save
      redirect_to user_path(@user)
    else
      redirect_to new_badge_path
    end
  end
end
