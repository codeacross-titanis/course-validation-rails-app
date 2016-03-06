require 'httparty'

class RegistrationsController < Devise::RegistrationsController
  def create
    super
    if !current_user.api_id?
      @result = HTTParty.post('http://api.rolledaces.com/apiv1/student/',
        :body => {
          :email => current_user.email
        }.to_json,
          :headers => { 'Content-Type' => 'application/json' })
      api_object = JSON.parse(@result.body)
      api_id = api_object["id"]
      current_user.api_id = api_id
      current_user.save
    end
  end
end
