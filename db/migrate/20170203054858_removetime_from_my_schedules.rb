class RemovetimeFromMySchedules < ActiveRecord::Migration[5.0]
  def self.up
  	remove_column :my_schedules, :time
  end

  def self.down
  	# add_column :projects, :project_id, :string
  end
end
