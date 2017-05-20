class RemoveTicketStateFromTicket < ActiveRecord::Migration[5.0]
  def change
    remove_column :tickets, :ticket_state, :string
  end
end
