class CreateSlots < ActiveRecord::Migration
  def change
    create_table :slots do |t|
      t.time :start_time
      t.references :group, index: true

      t.timestamps null: false
    end
    add_foreign_key :slots, :groups
  end
end
