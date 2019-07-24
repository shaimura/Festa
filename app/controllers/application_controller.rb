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



	protected

		 def configure_permitted_parameters

			  if params['controller'] == 'staffs/registrations'
				    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :postalcode, :address, :telephone])
				    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :postalcode, :address, :telephone])
					devise_parameter_sanitizer.permit(:account_update, keys: [:name, :postalcode, :address, :telephone])
			  elsif params['controller'] == 'organizations/registrations'
				    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :postalcode, :address, :telephone])
				    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :postalcode, :address, :telephone])
					devise_parameter_sanitizer.permit(:account_update, keys: [:name, :postalcode, :address, :telephone])
			  end
		 end



end
