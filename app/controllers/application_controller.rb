class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def isOnline
	  render html: "Application is Online"
  end
end
