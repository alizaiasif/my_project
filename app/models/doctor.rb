class Doctor < ActiveRecord::Base
  belongs_to :department
  has_many :tratments
  has_many :patients, :through => :tratments
end
