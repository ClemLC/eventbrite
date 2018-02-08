class CreatedTableAttendeesAttendedEvents < ActiveRecord::Migration[5.1]
  def change
    create_table 'attendees_attended_events', :id => false do |t|
        t.column :attendees_id, :integer
        t.column :attended_event_id, :integer
    end
  end
end
