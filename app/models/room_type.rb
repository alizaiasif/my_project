class RoomType < ActiveRecord::Base
has_many :rooms
has_many :staffs
end
