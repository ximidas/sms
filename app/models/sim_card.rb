class SimCard < ApplicationRecord
  has_many :task
  has_many :sim_card_funds
end
