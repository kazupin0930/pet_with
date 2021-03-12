class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  private

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :keep_pet, :number_of_pets])
  end

  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
    end
  end
end