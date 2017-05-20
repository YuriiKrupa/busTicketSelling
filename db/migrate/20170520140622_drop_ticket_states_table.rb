class DropTicketStatesTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :ticket_states
  end
end
