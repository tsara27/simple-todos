class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  layout :use_xhr?

  def use_xhr?
    false if request.xhr?
  end
end
