class Ticket < ApplicationRecord
    belongs_to :dog_show
    belongs_to :user
end
