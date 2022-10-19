class DogShow < ApplicationRecord
    has_many :tickets, class_name: "ticket", foreign_key: "id"
    has_many :attendees, through: :user
end
