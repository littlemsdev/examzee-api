class StudentGradeSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :student_number, :exam_id, :answer_keys, :status

  def status_grade
    case object.status
    when 1
      "Passed"
    when 2
      "Failed"
    end
  end

end
