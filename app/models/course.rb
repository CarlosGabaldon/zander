class Course < ActiveRecord::Base
  has_one :syllabus
  
  def after_create
    self.syllabus = Syllabus.new
  end
  
end
