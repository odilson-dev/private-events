class AddAttendedEventIdToEventAttendances < ActiveRecord::Migration[7.1]
  def change
    add_column :event_attendances, :attended_event_id, :integer
  end
end
