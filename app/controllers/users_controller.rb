class UsersController < ApplicationController
    def index
        render json: User.all
    end
    def show
        selected_user = User.find(params[:id])
        render json: selected_user, status: 200
    end
    def update
        selected_user = User.find(params[:id])
        selected_user.update(update_params)
        render json: selected_user, status: 200
    end
    private
    def update_params
        params.permit(:name, :bio, :password, :password_confirmation, :email)
    end
end
