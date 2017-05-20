class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :departure
      t.string :destination
      t.boolean :is_express
      #t.references :route, foreign_key: true

      t.timestamps
    end
  end
end
