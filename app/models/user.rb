class User < ApplicationRecord
  has_many :created_events, class_name: "Event", foreign_key: "creator_id"

  has_and_belongs_to_many :attended_events,
                          class_name: "Event",
                          foreign_key: "attendees_id",
                          join_table: "attendees_attended_events",
                          association_foreign_key: "attended_event_id"
end
