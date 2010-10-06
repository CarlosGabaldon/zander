class Topic < ActiveRecord::Base
  has_many :courses, :through => :syllabi
  has_and_belongs_to_many :materials
end
