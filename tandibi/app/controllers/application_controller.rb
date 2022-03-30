class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  # def devise_error_messages!
  #   flash[:notice] = resource.errors.full_messages.first
  #   render :action => 'devise/registrations/new'
  # end

  protected 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { 
      |u| u.permit(:email, :username, :first_name, :last_name, :password, :password_confirmation)
    }
  end
end