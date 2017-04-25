class Student < ApplicationRecord
  belongs_to :section
  has_many :student_grades
end
