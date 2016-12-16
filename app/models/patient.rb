class Patient < ActiveRecord::Base
has_many :tratments
has_one :bill
has_many :doctors, :through => :tratments
has_one :reservattion
end
