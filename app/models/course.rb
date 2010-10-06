class Course < ActiveRecord::Base
  has_many :syllabi
  has_many :topics, :through => :syllabi
  #after_save :create_syllabus
  
  #def create_syllabus
  #  self.syllabus = Syllabus.new
  #end
  
end
