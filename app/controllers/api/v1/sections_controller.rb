module Api::V1
  class SectionsController < ApiController

    def index
      render json: Section.all
    end

    def create
      @section = Section.create!(section_params)
      render json: @section
    end

    private

    def section_params
      params.permit(:name, :user_ids, :school_year)
    end


  end
end
