class CreateMySchedules < ActiveRecord::Migration[5.0]
  def change
    create_table :my_schedules do |t|
      t.string :course_name
      t.string :subjects
      t.string :start_time
      t.string :time
      t.time :duration
      t.timestamp :date

      t.timestamps
    end
  end
end
