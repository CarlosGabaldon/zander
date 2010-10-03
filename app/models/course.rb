class Course < ActiveRecord::Base
  has_one :syllabus
  after_save :create_syllabus
  
  def create_syllabus
    self.syllabus = Syllabus.new
  end
  
end
