module Api::V1
  class StudentsController < ApiController

    before_action :set_student, only: [:show, :update, :destroy]

    # GET /sections
    def index
      @students = Student.where(section_id: params[:id]).all.order("last_name ASC");
      json_response(@students)
    end

    # POST /section
    def create
      @obj = Student.create!(student_params)
      json_response(@obj, :created)
    end

    # GET /sections/:id
    def show
      json_response(@obj)
    end

    # PUT /sections/:id
    def update
      @obj.update(student_params)
      head :no_content
    end

    # DELETE /sections/:id
    def destroy
      @obj.destroy
      head :no_content
    end

    private

    def student_params
      # whitelist params
      params.permit(:student_number, :first_name, :middle_initial, :last_name, :section_id)
    end

    def set_student
      @obj = Student.find(params[:id])
    end

  end
end
