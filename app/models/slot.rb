class Slot < ActiveRecord::Base
  belongs_to :group
  belongs_to :room
  validate :group_ineligible_for_assignment, :cant_reassign_group
  validates :start_time, :end_time, presence: true

  def group_ineligible_for_assignment
    unless group.nil? or not changes.include?("group_id")
      if group.slots.where("start_time > ?", Time.now).count > 0
        errors.add(:group, "already assigned to upcoming slot")
      end
    end
  end

  def cant_reassign_group
    unless group_id_was.nil? or not changes.include?("group_id")
      errors.add(:group, "can't reassign assigned slot")
    end
  end
end
