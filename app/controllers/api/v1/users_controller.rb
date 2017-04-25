# app/controllers/api/v1/users_controller.rb

module Api::V1
  class UsersController < ApiController

    # GET /v1/users
    def index
      render json: User.all
    end

    def create
      @user = User.create!(user_params)
      render json: @user
    end

    private

    def user_params
      params.permit(:username, :password, :full_name)
    end


  end
end