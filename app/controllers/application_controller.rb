class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :is_xhr?

  def is_xhr?
    false if request.xhr?
  end
  
end
