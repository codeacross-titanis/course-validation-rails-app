require 'httparty'

class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @badges = HTTParty
      .get("http://api.rolledaces.com/apiv1/student/?email=#{@user.email}")[0]["badge_set"]
  end
end
