class AddAttendeeIdToEventAttendances < ActiveRecord::Migration[7.1]
  def change
    add_column :event_attendances, :attendee_id, :integer
  end
end
