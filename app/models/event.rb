class Event < ApplicationRecord

    validates :title, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :description, presence: true

    has_many :event_attendances, foreign_key: :attended_event_id
    has_many :attendees, through: :event_attendances, source: :attendee

    belongs_to :creator, class_name: "User"

    scope :past, -> { where('date < ?', Date.today) }
    scope :upcoming, -> { where('date >= ?', Date.today) }
end
