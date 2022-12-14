class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  enum role: [:attendee, :trainer, :event_organizer] #Slight ambiguity in this, not attendee model related
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :attendee
  end
  has_many :attendees
end
