class Task < ApplicationRecord
  has_one :client
  has_one :sim_card
end
