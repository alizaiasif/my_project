class Tratment < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
has_one :bill
end
