class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception

  include SessionsHelper
  helper_method :user_signed_in?

  before_action do
    @current_user = User.find_by id: session[:user_id]
  end

  def authenticate_user!
    if @current_user.blank?
      redirect_to sign_in_path, notice: "Requires Sign In"
    end  # end if
  end # end def authenticate

  def user_signed_in?
    @current_user.present?
  end

end # end class
