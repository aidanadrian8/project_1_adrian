class DogShow < ApplicationRecord
    has_many :attendees, through: :user
end
