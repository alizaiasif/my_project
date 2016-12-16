class Room < ActiveRecord::Base
  belongs_to :room_type
  has_one :reservattion
end
