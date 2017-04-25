module Api::V1
  class ExamsController < ApiController

    def index
      render json: Exam.all
    end

    def create
      @exam = Exam.create!(exam_params)
      render json: @exam
    end

    private

    def exam_params
      params.permit(:exam_name, :subject, :total_item, :content, :answer_keys, :section_ids, :status)
    end


  end
end
