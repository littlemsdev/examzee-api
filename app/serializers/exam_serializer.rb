class ExamSerializer < ActiveModel::Serializer
  attributes :id, :exam_name, :subject, :total_item,
  :content, :answer_keys, :section_ids, :exam_status

  def exam_status
    case object.status
    when 1
      "Active"
    when 2
      "Disabled"
    end
  end

end
