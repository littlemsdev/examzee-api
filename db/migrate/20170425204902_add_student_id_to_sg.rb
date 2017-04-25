class AddStudentIdToSg < ActiveRecord::Migration[5.0]
  def change
    add_column :student_grades, :student_id, :integer
  end
end
