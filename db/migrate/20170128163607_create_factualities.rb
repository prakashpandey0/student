class CreateFactualities < ActiveRecord::Migration[5.0]
  def change
    create_table :factualities do |t|
      t.string :teachers_name
      t.integer :mobile_no

      t.timestamps
    end
  end
end
