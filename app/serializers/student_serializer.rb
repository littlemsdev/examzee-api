class StudentSerializer < ActiveModel::Serializer
  attributes :id, :student_number, :first_name, :middle_initial, :last_name, :section_id, :full_name, :section_name

  def full_name
    object.first_name + " " + object.last_name
  end

  def section_name
    object.section.name
  end

end
