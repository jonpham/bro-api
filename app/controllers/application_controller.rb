class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  before_action :restrict_access
  
  def restrict_access
    authenticate_or_request_with_http_token do |token,options|
      # raise
      User.find_by(api_key: token,email: response.headers['X-User-Email'])
      #   return true
      # else
      #   return false
      # end
    end
  end
end
