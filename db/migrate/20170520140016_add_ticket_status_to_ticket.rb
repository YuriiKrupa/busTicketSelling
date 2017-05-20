class AddTicketStatusToTicket < ActiveRecord::Migration[5.0]
  def change
    add_reference :tickets, :ticket_status, foreign_key: true
  end
end
