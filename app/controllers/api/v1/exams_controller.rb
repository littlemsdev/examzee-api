module Api::V1
  class ExamsController < ApiController

    before_action :set_exam, only: [:show, :update, :destroy]

    # GET /exams
    def index
      @exams = Exam.all
      json_response(@exams)
    end

    # POST /exam
    def create
      @obj = Exam.create!(exam_params)
      json_response(@obj, :created)
    end

    # GET /exams/:id
    def show
      json_response(@obj)
    end

    # PUT /exams/:id
    def update
      @obj.update(exam_params)
      head :no_content
    end

    # DELETE /exams/:id
    def destroy
      @obj.destroy
      head :no_content
    end

    private

    def exam_params
      # whitelist params
      params.permit(:exam_name, :subject, :total_item, :content, :answer_keys, :section_ids, :status)
    end

    def set_exam
      @obj = Exam.find(params[:id])
    end

  end
end
