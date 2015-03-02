class Group < ActiveRecord::Base
  has_many :slots
  default_scope {order('name ASC')}
end
