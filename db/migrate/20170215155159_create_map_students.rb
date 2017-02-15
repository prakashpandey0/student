class CreateMapStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :map_students do |t|
      t.integer :enroll_no
      t.string :name
      t.integer :phone_no
      t.string :password

      t.timestamps
    end
  end
end
