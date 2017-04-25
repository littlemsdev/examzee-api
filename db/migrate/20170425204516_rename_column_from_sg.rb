class RenameColumnFromSg < ActiveRecord::Migration[5.0]
  def change
    rename_column :student_grades, :student_name, :student_number
  end
end
