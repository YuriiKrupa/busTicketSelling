class Ticket < ApplicationRecord
  belongs_to :user
  has_one :trip
  has_one :ticket_status
end
