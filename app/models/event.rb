class Event < ApplicationRecord

    validates :title, presence: true
    validates :date, presence: true
    validates :location, presence: true
    validates :description, presence: true

    belongs_to :creator, class_name: "User"
    belongs_to :attendee, class_name: "User"
end
