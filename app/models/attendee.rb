class Attendee < user
    belongs_to :user, class_name: "user", foreign_key: "id"
    belongs_to :dog_show
end