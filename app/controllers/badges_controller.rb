require 'httparty'

class BadgesController < ApplicationController

  def new
    render :new
  end

  def create
    @result = HTTParty.post('http://api.rolledaces.com/apiv1/badge/',
      :body => {
        :name => params[:name],
        :completed_date => params[:completed_date],
        :student => current_user.api_id,
        :logo => params[:logo],
        :description => params[:description]
      }.to_json,
        :headers => { 'Content-Type' => 'application/json' })
      puts @result 
    redirect_to user_path(current_user)
  end

end
