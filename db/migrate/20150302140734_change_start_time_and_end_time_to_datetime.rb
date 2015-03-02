class ChangeStartTimeAndEndTimeToDatetime < ActiveRecord::Migration
  def change
    change_column :slots, :start_time, :datetime
    change_column :slots, :end_time, :datetime
  end
end
