module Admin::V1
  class HomeController < ApiController
    def index
      render json: {message: "Test Sucess"}
    end 
  end
end