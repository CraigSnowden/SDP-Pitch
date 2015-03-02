class AddEndTimeToSlot < ActiveRecord::Migration
  def change
    add_column :slots, :end_time, :time
  end
end
