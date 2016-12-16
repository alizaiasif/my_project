class Bill < ActiveRecord::Base
  belongs_to :patient
  belongs_to :tratment
end
