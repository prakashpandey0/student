class RenameClassToStudentClass < ActiveRecord::Migration[5.0]
  def change
  	    rename_column :students, :class, :student_class_name
  end
end
