class Reservattion < ActiveRecord::Base
  belongs_to :patient
  belongs_to :room
end
