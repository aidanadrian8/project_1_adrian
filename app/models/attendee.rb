class Attendee < ApplicationRecord
  belongs_to :user
  belongs_to :dog_show
end
