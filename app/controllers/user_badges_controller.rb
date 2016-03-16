class UserBadgesController < ApplicationController

  def new
    @user_badge = UserBadge.new
    @user_results = User.categories_for_user_dropdown
    @badge_results = Badge.categories_for_badge_dropdown
  end

  def create
    @user_badge = UserBadge.new(user_badge_params)
    @user_badge.badge_assigner = current_user
    @user = User.find(params[:user_badge][:badge_receiver_id])
    if @user_badge.save
      redirect_to user_path(@user)
    else
      redirect_to new_badge_path
    end
  end

  private

  def user_badge_params
    params.require(:user_badge).permit(
      :badge_id,
      :badge_receiver_id
    )
  end
end
