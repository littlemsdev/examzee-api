class CreateExamzeeTable < ActiveRecord::Migration[5.0]
  def change

    create_table :users do |t|
      t.string :username
      t.string :password, null: false, default: ""
      t.string :full_name
    end

    create_table :sections do |t|
      t.string :name
      t.text :user_ids, array: true, default: []
      t.string :school_year
    end

    create_table :students do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.integer :section_id
    end

    create_table :exams do |t|
      t.string :exam_name
      t.string :subject
      t.integer :total_item
      t.text :content
      t.text :answer_keys, array: true, default: []
      t.text :section_ids, array: true, default: []
      t.integer :status
    end

    create_table :student_grades do |t|
      t.integer :student_name
      t.integer :exam_id
      t.text :answer_keys, array: true, default: []
      t.integer :status
    end

  end
end
