module Api::V1
  class UsersController < ApiController

    before_action :set_user, only: [:show]

    def show
      json_response(@obj)
    end

    def create
      @obj = User.create!(user_params)
      json_response(@obj, :created)
    end

    private

    def set_user
      @obj = User.find(params[:id])
    end

    def user_params
      # whitelist params
      params.permit(:username, :password, :full_name)
    end

  end
end
