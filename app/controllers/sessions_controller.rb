class SessionsController < ApplicationController

    def login
        # binding.pry
        user = User.find_by(username: params[:user][:username])
        if user && user.authenticate(params[:user][:password])
            render json: UserSerializer.new(user)
        else
            render json: {errors: "Incorrect login credentials. Please try again.", status: 400}
        end
    end

end