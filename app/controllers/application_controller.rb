class ApplicationController < ActionController::API

    before_action :authenticate

    def authenticate
        access_token = request.headers['Authorization']

        if access_token.blank?
            render json: {errors: "Authen Fails"}, status: 401
            return false
        else
            session = Session.where(access_token:access_token)
            if session.blank?
                render json: {errors: "Authen Fails"}, status: 401
                return false 
            end
        end
    end
end
