class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  def isOnline
	  render html: "Application is Online"
  end
end
