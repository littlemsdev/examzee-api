module Api::V1
  class SessionsController < ApiController

    def show
      json_response(@user = User.where("username =?", params[:id]).where("password =?", params[:password]))
    end

  end
end
