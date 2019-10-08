class UsersController < ApplicationController

    def create
        # binding.pry

        if User.find_by(username: params[:user][:username])
            render json: {errors: "This username already exists. Please try another name.", status: 400}
        else
            user = User.new(user_params)

            if user.save
                render json: UserSerializer.new(user)
            else
                errors = []
                user.errors.messages.each do |error_symbol, message|
                    errors.push("There appears to be an error: #{error_symbol} #{message[0]}")
                end
                render json: {errors: errors, status: 400}
            end
        end
    end

    def update      
    end

    private

    def user_params
     params.require(:user).permit(:username, :password)
    end
 

end