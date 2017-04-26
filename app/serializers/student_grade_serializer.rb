class StudentGradeSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :student_number, :exam_id, :answer_keys, :status, :exam_name, :status_grade

  def status_grade
    case object.status
    when 1
      "Passed"
    when 2
      "Failed"
    end
  end

  def exam_name
    object.exam.exam_name
  end

end
