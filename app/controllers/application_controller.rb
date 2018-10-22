class ApplicationController < ActionController::Base
before_action :add_devise_params, if: :devise_controller?

    def add_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image])
        devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image])
    end
end
