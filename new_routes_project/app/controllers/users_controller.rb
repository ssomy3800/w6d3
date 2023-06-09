class UsersController < ApplicationController
    def index
        @users = User
        render json: @users
    end

    def create
        user = User.new(users_params)
        if user.save
          render json: user
        else
          render json: user.errors.full_messages, status: :unprocessable_entity
        end
    end

    def show
        render json: params
    end 

    def update
        @user = User.find(params[:id])

        if @user.update(users_params)
            redirect_to users_params
        else
            render json: @user.errors.full_messages, status: 422
        end
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_url
    end

    private
    def users_params
        params.require(:user).permit(:username)
    end

end