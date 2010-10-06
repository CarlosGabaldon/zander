class Topic < ActiveRecord::Base
  #has_many :courses, :through => :syllabus
  belongs_to :course
  has_and_belongs_to_many :materials
end
