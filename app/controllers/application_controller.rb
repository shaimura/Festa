class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
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


      helper_method :remaining_point

      def remaining_point(staff)

        total = 0

        plus_points = Point.unscoped.where(staff_id: staff.id)

          plus_point = 0

          plus_points.each do |point|
            plus_point += point.plus_point.to_i
          end

          use_points = Order.unscoped.where(staff_id: staff.id)

          use_point = 0

          use_points.each do |point|
            use_point += point.present.use_point.to_i
          end

          total = plus_point - use_point

          return total
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
          elsif params['controller'] == 'admins/registrations'
            devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
            devise_parameter_sanitizer.permit(:sign_in, keys: [:name])
            devise_parameter_sanitizer.permit(:account_update, keys: [:name])
        end
		 end



end
