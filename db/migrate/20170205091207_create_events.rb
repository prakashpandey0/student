class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :event_tiltle
      t.string :event_type
      t.string :select_class
      t.time :select_day
      
      t.time :end_date
      t.time :event_duration

      t.timestamps
    end
  end
end
