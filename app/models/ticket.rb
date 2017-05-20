class Ticket < ApplicationRecord
  belongs_to :user
  belongs_to :trip
  has_one :ticket_status
end
