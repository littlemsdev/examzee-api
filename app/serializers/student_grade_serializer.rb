class StudentGradeSerializer < ActiveModel::Serializer
  attributes :id, :student_id, :student_number, :exam_id, :answer_keys, :status
end
