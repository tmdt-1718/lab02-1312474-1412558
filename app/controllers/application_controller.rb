class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # helper_method :mailbox, :conversation
  #
  # private
  # def mailbox
  #   @mailbox ||= current_user.mailbox
  # end
  # def conversation
  #     @conversation ||= mailbox.conversations.find(params[:id])
  # end
  #
  # protected
  # def configure_permitted_parameters
  #   added_attrs = [:name, :email, :password, :password_confirmation, :remember_me]
  #   devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
  #   devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  # end

end
