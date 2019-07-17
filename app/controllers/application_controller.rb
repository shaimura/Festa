class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?


    def after_sign_in_path_for(resource)
       case resource
      	when Admin
          admins_top_path
      	when Staff
         festivals_path
  		when Organization
  			festivals_path
  		end
  	end

     def after_sign_out_path_for(resource)
       case resource
       when :admin
         new_admin_session_path
       when :staff
         root_path
        when :organization
        	root_path
       end
    end


	 def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_up) do |staff_params|
	    staff_params.permit(:name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	  end
	  devise_parameter_sanitizer.permit(:sign_in) do |staff_params|
	    staff_params.permit(:name, :postalcode, :address, :telephone, :email, :remember_me)
	  end
	  devise_parameter_sanitizer.permit(:sign_up) do |organization_params|
	    organization_params.permit(:name, :postalcode, :address, :telephone, :email, :password, :password_confirmation)
	  end
	  devise_parameter_sanitizer.permit(:sign_in) do |organization_params|
	    organization_params.permit(:name, :postalcode, :address, :telephone, :email, :remember_me)
	  end
	  devise_parameter_sanitizer.permit(:sign_up) do |admin_params|
	    admin_params.permit(:name, :email, :password, :password_confirmation)
	  end
	  devise_parameter_sanitizer.permit(:sign_in) do |admin_params|
	    admin_params.permit(:name, :email, :remember_me)
	  end
	end



end
