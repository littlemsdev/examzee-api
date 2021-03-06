module Api::V1
  class SectionsController < ApiController

    before_action :set_section, only: [:show, :update, :destroy]

    # GET /sections
    def index
      @sections = Section.all
      json_response(@sections)
    end

    # POST /section
    def create
      @obj = Section.create!(section_params)
      json_response(@obj, :created)
    end

    # GET /sections/:id
    def show
      json_response(@obj)
    end

    # PUT /sections/:id
    def update
      @obj.update(section_params)
      head :no_content
    end

    # DELETE /sections/:id
    def destroy
      @obj.destroy
      head :no_content
    end

    private

    def section_params
      # whitelist params
      params.permit(:name, :school_year)
    end

    def set_section
      @obj = Section.find(params[:id])
    end

  end
end
