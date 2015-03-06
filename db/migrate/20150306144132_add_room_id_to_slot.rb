class AddRoomIdToSlot < ActiveRecord::Migration
  def change
    add_reference :slots, :room, index: true
    add_foreign_key :slots, :rooms
  end
end
