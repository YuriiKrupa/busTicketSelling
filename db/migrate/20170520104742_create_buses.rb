class CreateBuses < ActiveRecord::Migration[5.0]
  def change
    create_table :buses do |t|
      t.string :class
      t.integer :seats
      t.string :licence_number, limit: 6

      t.timestamps
    end
  end
end
