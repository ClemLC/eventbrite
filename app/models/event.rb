class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_and_belongs_to_many :attendees,
                          class_name: "User",
                          foreign_key: "attended_event_id",
                          join_table: "attendees_attended_events",
                          association_foreign_key: "attendees_id"
end
