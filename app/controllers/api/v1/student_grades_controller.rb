module Api::V1
  class StudentGradesController < ApiController

    before_action :set_student_grade, only: [:show, :update, :destroy]

    # GET /student_grades
    def index
      @student_grades = StudentGrade.where(student_number: params[:id]).all.order("exam_id ASC");
      json_response(@student_grades)
    end

    # POST /student_grade
    def create
      @obj = StudentGrade.create!(student_grade_params)
      json_response(@obj, :created)
    end

    # GET /student_grades/:id
    def show
      json_response(@obj)
    end

    # PUT /student_grades/:id
    def update
      @get_exam_ans = Exam.select("id, answer_keys").last

      @x = @obj.answer_keys
      @y = @get_exam_ans.answer_keys

      @count_correct = @x & @y
      @updated_score = @count_correct.length

      @obj.update_attributes({score: @updated_score})

      head :no_content
    end

    # DELETE /student_grades/:id
    def destroy
      @obj.destroy
      head :no_content
    end


    private

    def student_grade_params
      # whitelist params
      params.permit(:student_id, :student_number, :exam_id, :answer_keys, :score, :status)
    end

    def set_student_grade
      @obj = StudentGrade.find(params[:id])
    end

  end
end
