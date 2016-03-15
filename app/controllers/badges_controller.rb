class BadgesController < ApplicationController

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
    if @badge.save
      redirect_to badges_path
    else
      flash[:error] = @badge.errors.full_messages.join('. ')
      render :new
    end
  end

  def index
    @badges = Badge.all
  end

  private

  def badge_params
    params.require(:badge).permit(
      :title,
      :completed_date,
      :description,
      :url
    )
  end
end
