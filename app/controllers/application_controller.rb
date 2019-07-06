class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	def search
		@search = Festival.where(activated: true).search(params[:search])
	end

	protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :postalcode, :address, :area, :telephone])
	end
end
