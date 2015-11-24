class RegistrationsController < Devise::RegistrationsController
  
  def after_sign_up_path_for(resource)
    edit_user_registration_path
  end
  def after_update_path_for(resource)
  	profile_path(current_user)
  end
end