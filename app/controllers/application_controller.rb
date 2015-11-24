class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  layout :layout_by_resource


  protected

  def configure_permitted_parameters
 	  devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :password, :password_confirmation) } 
   	devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :password, :remember_me) }
   	devise_parameter_sanitizer.for(:account_update) { |u| u.permit( 
   		:email, 
   		:description, 
   		:password, 
   		:current_password, 
   		:password_confirmation, 
   		:avatar,
   		:username,
   		:business_name,
      :city,
   		:address,
   		:zip_code,
   		:business_description,
   		:business_type,
      :website_linl,
   		:longitude,
   		:latitude) } 
  end



  def layout_by_resource
    if devise_controller?
      "layout_devise"
    else
      "application"
    end
  end
end


