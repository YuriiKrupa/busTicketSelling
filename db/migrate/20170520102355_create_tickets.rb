class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.references :user, foreign_key: true
      t.references :trip, foreign_key: true
      t.string :ticket_state

      t.timestamps
    end
  end
end
