class ApplicationController < ActionController::Base
  before_action :configre_permitted_parameters, if: :devise_controller?

  def configre_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,:last_name,:nickname,:birthday,:phone_number])
  end
end
