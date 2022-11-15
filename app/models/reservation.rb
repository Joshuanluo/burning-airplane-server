class Reservation < ApplicationRecord
    belongs_to :airplane
    belongs_to :user
end
