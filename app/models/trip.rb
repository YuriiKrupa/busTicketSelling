class Trip < ApplicationRecord
  #belongs_to :routes
  has_many :buses
end
